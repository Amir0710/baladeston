import 'package:baladeston/data/models/collection/collection_model.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/data/datasources/remote/collection_remote_datasource/collection_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CollectionApiImplementation extends CollectionApi {
  final SupabaseClient _client = Supabase.instance.client;

  PostgrestFilterBuilder _applyFilter(
      PostgrestFilterBuilder query, CollectionQueryFilter filter) {
    if (filter.id != null) {
      query = query.eq('id', filter.id!);
    }
    if (filter.searchId != null) {
      query = query.eq('search_id', filter.searchId!);
    }
    if (filter.status != null) {
      query = query.eq('status', filter.status!);
    }
    if (filter.ownerId != null) {
      query = query.eq('owner_id', filter.ownerId!);
    }
    if (filter.searchTerm != null && filter.searchTerm!.trim().isNotEmpty) {
      query = query.ilike('name', '%${filter.searchTerm!.trim()}%');
    }
    if (filter.minCount != null) {
      query = query.gte('count', filter.minCount!);
    }
    if (filter.maxCount != null) {
      query = query.lte('count', filter.maxCount!);
    }


    return query;
  }

  @override
  Future<List<CollectionModel>?> getCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    final data = await _applyFilter(_client.from('collection').select(), filter);
    return (data as List<dynamic>)
        .map((json) => CollectionModel.fromJson(Map<String, dynamic>.from(json)))
        .toList();
  }

  @override
  Future<CollectionModel?> getCollectionById({required int id}) async {
    final data = await _client
        .from('collection')
        .select()
        .eq('id', id)
        .maybeSingle();
    if (data == null) return null;
    return CollectionModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<CollectionModel> createCollection(
      {required CollectionModel collection}) async {
    final insertData = collection.toJson()..remove('id');
    final data = await _client
        .from('collection')
        .insert(insertData)
        .select()
        .single();
    return CollectionModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<CollectionModel> updateCollection(
      {required CollectionModel collection}) async {
    if (collection.id == null) {
      throw Exception('Collection id is required for update');
    }
    final data = await _client
        .from('collection')
        .update(collection.toJson())
        .eq('id', collection.id!)
        .select()
        .single();
    return CollectionModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<void> deleteCollectionByFilter(
      {required CollectionQueryFilter filter}) async {
    await _applyFilter(_client.from('collection').delete(), filter);
  }

  @override
  Future<int> countAllCollection(
      {required CollectionQueryFilter filter}) async {
    final result = await _applyFilter(
        _client.from('collection').select('*'), filter)
        .count(CountOption.exact);
    return result.count ?? 0;
  }

  @override
  Future<void> deleteCollectionById({required int id}) async {
    await _client.from('collection').delete().eq('id', id);
  }
}
