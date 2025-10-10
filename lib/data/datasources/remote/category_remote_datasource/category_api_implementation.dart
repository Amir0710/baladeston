import 'dart:io';

import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/filters/category_query_filter.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'category_api.dart';

class CategoryApiImplementation extends CategoryApi {
  final SupabaseClient _client;

  CategoryApiImplementation(this._client);

  // final SupabaseClient _client = Supabase.instance.client;

  PostgrestTransformBuilder _applyFilterSelect(CategoryQueryFilter filter) {
    var query = _client.from('category').select();

    if (filter.id != null) query = query.eq('id', filter.id!);
    if (filter.searchId != null) query = query.eq('id', filter.searchId!);
    if (filter.ownerId != null) query = query.eq('owner_id', filter.ownerId!);
    if (filter.status != null) query = query.eq('status', filter.status!);
    if (filter.searchTerm != null) {
      query = query.ilike('name', '%${filter.searchTerm!}%');
    }
    if (filter.minCount != null) query = query.gte('count', filter.minCount!);
    if (filter.maxCount != null) query = query.lte('count', filter.maxCount!);

    return query.select();
  }

  /// فیلتر برای DELETE / UPDATE (بدون select)
  PostgrestFilterBuilder _deleteFilterQuery(CategoryQueryFilter filter) {
    var query = _client.from('category').delete();

    if (filter.id != null) query = query.eq('id', filter.id!);
    if (filter.searchId != null) query = query.eq('id', filter.searchId!);
    if (filter.ownerId != null) query = query.eq('owner_id', filter.ownerId!);
    if (filter.status != null) query = query.eq('status', filter.status!);
    if (filter.searchTerm != null) {
      query = query.ilike('name', '%${filter.searchTerm!}%');
    }
    if (filter.minCount != null) query = query.gte('count', filter.minCount!);
    if (filter.maxCount != null) query = query.lte('count', filter.maxCount!);

    return query;
  }

  @override
  Future<List<CategoryModel>?> getCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    final data = await _applyFilterSelect(filter);
    return (data as List<dynamic>)
        .map((json) => CategoryModel.fromJson(Map<String, dynamic>.from(json)))
        .toList();
  }

  @override
  Future<CategoryModel?> getCategoryById({required int id}) async {
    final data =
        await _client.from('category').select().eq('id', id).maybeSingle();
    if (data == null) return null;
    return CategoryModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<CategoryModel> createCategory({
    required CategoryModel category,
  }) async {
    final insertData = category.toJson()..remove('id');
    final data =
        await _client.from('category').insert(insertData).select().single();
    return CategoryModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<CategoryModel> updateCategory({
    required CategoryModel category,
  }) async {
    if (category.id == null) {
      throw Exception('Category id is required for update');
    }
    final data = await _client
        .from('category')
        .update(category.toJson())
        .eq('id', category.id!)
        .select()
        .single();
    return CategoryModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<void> deleteCategoryByFilter({
    required CategoryQueryFilter filter,
  }) async {
    await _deleteFilterQuery(filter);
  }

  @override
  Future<void> deleteCategoryById({required int id}) async {
    await _client.from('category').delete().eq('id', id);
  }

  @override
  Future<int> countAllCategories({
    required CategoryQueryFilter filter,
  }) async {
    final result = await _applyFilterSelect(filter).count(CountOption.exact);
    return result.count ?? 0;
  }

  @override
  Future<List<CategoryModel>?> getAllCategory({
    required CategoryQueryFilter filter,
  }) async {
    final start = filter.offset;
    final end = filter.offset + filter.limit - 1;

    final data = await _client
        .from('category')
        .select()
        .order(filter.order, ascending: filter.ascending)
        .range(start, end);

    return (data as List<dynamic>)
        .map((json) => CategoryModel.fromJson(Map<String, dynamic>.from(json)))
        .toList();
  }

  @override
  Future<String> addImage({required dynamic imageFile}) async {
    try {
      print(_client.auth.currentSession?.accessToken);
      print(_client.auth.currentUser?.id);
      final fileName = 'category_${DateTime.now().millisecondsSinceEpoch}.jpg';

      if (kIsWeb && imageFile is Uint8List) {
        final response = await _client.storage
            .from('category')
            .uploadBinary(fileName, imageFile);
        if (response.isEmpty) {
          throw Exception('Image upload failed for web.');
        }
      } else if (imageFile is File) {
        // Mobile / Desktop → file upload
        final response =
            await _client.storage.from('category').upload(fileName, imageFile);
        if (response.isEmpty) {
          throw Exception('Image upload failed for file.');
        }
      } else {
        throw Exception('Unsupported image type.');
      }
      final publicUrl = _client.storage.from('category').getPublicUrl(fileName);
      return publicUrl;
    } catch (e) {
      throw Exception('Image upload error: $e');
    }
  }
}
