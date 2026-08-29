import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:baladeston/core/network/error/dio_error_translator.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/datasource/remote/category_item_remote_datasource/category_item_api.dart';
import 'package:baladeston/data/category/error/category_error_mapper.dart'
    as category_error_mapper;
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/category/mapper/item/category_item/category_Item_query_filter_mapper.dart';
import 'package:baladeston/data/category/mapper/item/integrity/category_item_data_integrity_mapper.dart';
import 'package:baladeston/data/category/model/category_item_model/category_item_model.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/mapper/model/collection/collection_query_filter_mapper.dart';
import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/parsing/category_model_parsing_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

class CategoryItemApiImplementation extends CategoryItemApi {
  final AppHttpClient client;

  CategoryItemApiImplementation({required this.client});

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/category-items/$path')
          .replace(queryParameters: query);

  Result<T, CategoryFailure> _handleDioError<T>(DioException e) {
    final errorData = DioErrorTranslator.translate(e);
    return Result.failure(
      category_error_mapper.map(
        errorData.code,
        statusCode: errorData.statusCode,
      ),
    );
  }

  Result<T, CategoryFailure> _parsingFailure<T>({
    required String debugMessage,
    String? rawSource,
  }) {
    return Result.failure(
      CategoryModelParsingFailure(
        debugMessage: debugMessage,
        rawSource: rawSource,
      ),
    );
  }

  Result<T, CategoryFailure> _handleParsingError<T>(
    Object e,
    StackTrace st,
    Object? raw,
  ) {
    final rawSource = raw?.toString();

    if (e is CheckedFromJsonException) {
      return _parsingFailure(
        debugMessage: 'field: ${e.key} | ${e.message}',
        rawSource: rawSource,
      );
    }

    if (kDebugMode) {
      debugPrint('⚠️ [CategoryItemApi] Parsing error: $e\n$st');
    }

    return _parsingFailure(
      debugMessage: e.toString(),
      rawSource: rawSource,
    );
  }

  void _logCorruptItem({
    required Object reason,
    required Map<String, dynamic> json,
  }) {
    if (kDebugMode) {
      debugPrint(
        '⚠️ [CategoryItemApi] Corrupt item skipped: $reason\n$json',
      );
    }
  }

  Map<String, dynamic>? _asMap(Object? raw) =>
      raw is Map<String, dynamic> ? raw : null;

  List<dynamic>? _asList(Object? raw) => raw is List ? raw : null;

  @override
  Future<Result<CategoryItemModel, CategoryFailure>> addCategoryItem({
    required CategoryItemModel item,
  }) async {
    Object? raw;
    try {
      raw = await client.post(_url(''), body: item.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = CategoryItemDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<CategoryItemModel, CategoryFailure>> updateCategoryItemById({
    required int id,
    required CategoryItemModel item,
  }) async {
    Object? raw;
    try {
      raw = await client.put(_url('$id'), body: item.toJson());
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = CategoryItemDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> updateCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
    required CategoryItemModel item,
  }) async {
    Object? raw;
    try {
      raw = await client.put(
        _url('filter', filter.toQuery()),
        body: item.toJson(),
      );

      if (raw is int) {
        return Result.success(raw);
      }

      final json = _asMap(raw);
      if (json != null) {
        final count = json['updatedCount'] ?? json['count'] ?? json['affected'];
        if (count is int) {
          return Result.success(count);
        }
      }

      return _parsingFailure(
        debugMessage:
            'Expected int or Map with updatedCount/count/affected, got ${raw.runtimeType}',
        rawSource: raw?.toString(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryItemById({
    required int itemId,
  }) async {
    Object? raw;
    try {
      raw = await client.delete(_url('$itemId'));
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final deletedId = json['deletedId'];
      if (deletedId is! int) {
        return _parsingFailure(
          debugMessage:
              'deletedId missing or not int (got ${deletedId.runtimeType})',
          rawSource: json.toString(),
        );
      }

      return Result.success(deletedId);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<int, CategoryFailure>> deleteCategoryItemByFilter({
    required CategoryItemQueryFilter filter,
  }) async {
    Object? raw;
    try {
      raw = await client.delete(_url('filter', filter.toQuery()));

      if (raw is int) {
        return Result.success(raw);
      }

      final json = _asMap(raw);
      if (json != null) {
        final count = json['deletedCount'] ?? json['count'] ?? json['affected'];
        if (count is int) {
          return Result.success(count);
        }
      }

      return _parsingFailure(
        debugMessage:
            'Expected int or Map with deletedCount/count/affected, got ${raw.runtimeType}',
        rawSource: raw?.toString(),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<PaginatedResponseModel<CollectionModel>, CategoryFailure>>
      getCollectionsByCategoryItemFilter({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  }) async {
    Object? raw;
    try {
      final query = {
        ...categoryItemFilter.toQuery(),
        ...collectionFilter.toQuery(),
      };
      raw = await client.get(_url('collections', query));

      // extract filter limit
      final limit = int.tryParse(query['limit'] ?? '');

      // server send map (paginated)
      final map = _asMap(raw);
      if (map != null) {
        final itemsRaw = map['items'] ?? map['data'] ?? map['results'];
        final itemsList = _asList(itemsRaw);

        if (itemsList == null) {
          return _parsingFailure(
            debugMessage:
                'Expected items as List in paginated response but got ${itemsRaw.runtimeType}',
            rawSource: map.toString(),
          );
        }

        final models = <CollectionModel>[];

        for (final e in itemsList) {
          if (e is! Map<String, dynamic>) {
            _logCorruptItem(reason: 'not a Map', json: {});
            continue;
          }
          try {
            models.add(CollectionModel.fromJson(e));
          } on CheckedFromJsonException catch (err) {
            _logCorruptItem(reason: err, json: e);
            continue;
          }
        }

        if (models.isEmpty && itemsList.isNotEmpty) {
          return _parsingFailure(
            debugMessage:
                'All ${itemsList.length} items in paginated response failed parsing check',
            rawSource: itemsList.toString(),
          );
        }

        final nextCursorRaw = map['nextCursor'] ??
            map['next'] ??
            map['cursor'] ??
            map['lastElement'];
        final nextCursor = nextCursorRaw?.toString();

        final rawItemsCount = itemsList.length;

        final isLastRaw = map['isLast'];
        final isLast = isLastRaw is bool
            ? isLastRaw
            : (limit != null ? rawItemsCount < limit : false);

        return Result.success(
          PaginatedResponseModel<CollectionModel>(
            items: models,
            nextCursor: nextCursor,
            isLast: isLast,
          ),
        );
      }

      // server send list (legacy)
      final list = _asList(raw);
      if (list == null) {
        return _parsingFailure(
          debugMessage:
              'Expected Map (paginated) or List (legacy) but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      if (list.isEmpty) {
        return Result.success(
          PaginatedResponseModel<CollectionModel>(
            items: const <CollectionModel>[],
            nextCursor: null,
            isLast: true,
          ),
        );
      }

      final models = <CollectionModel>[];

      for (final e in list) {
        if (e is! Map<String, dynamic>) {
          _logCorruptItem(reason: 'not a Map', json: {});
          continue;
        }

        try {
          models.add(CollectionModel.fromJson(e));
        } on CheckedFromJsonException catch (err) {
          _logCorruptItem(reason: err, json: e);
          continue;
        }
      }

      if (models.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'All ${list.length} collections in response failed parsing check',
          rawSource: list.toString(),
        );
      }

      final rawItemsCount = list.length;
      final isLast = limit != null ? rawItemsCount < limit : false;

      return Result.success(
        PaginatedResponseModel<CollectionModel>(
          items: models,
          nextCursor: null,
          isLast: isLast,
        ),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<PaginatedResponseModel<CategoryItemModel>, CategoryFailure>>
      getCategoryItemByFilter({
    required CategoryItemQueryFilter categoryItemFilter,
  }) async {
    Object? raw;
    try {
      final query = categoryItemFilter.toQuery();
      raw = await client.get(_url('filter', query));

      // extract filter limit
      final limit = int.tryParse(query['limit'] ?? '');

      // server send map (paginated)
      final map = _asMap(raw);
      if (map != null) {
        final itemsRaw = map['items'] ?? map['data'] ?? map['results'];
        final itemsList = _asList(itemsRaw);

        if (itemsList == null) {
          return _parsingFailure(
            debugMessage:
                'Expected items as List in paginated response but got ${itemsRaw.runtimeType}',
            rawSource: map.toString(),
          );
        }

        final models = <CategoryItemModel>[];

        for (final e in itemsList) {
          if (e is! Map<String, dynamic>) {
            _logCorruptItem(reason: 'not a Map', json: {});
            continue;
          }

          final integrityFailure = CategoryItemDataIntegrityMapper.map(e);
          if (integrityFailure != null) {
            _logCorruptItem(reason: integrityFailure, json: e);
            continue;
          }

          try {
            models.add(CategoryItemModel.fromJson(e));
          } on CheckedFromJsonException catch (err) {
            _logCorruptItem(reason: err, json: e);
            continue;
          }
        }

        if (models.isEmpty && itemsList.isNotEmpty) {
          return _parsingFailure(
            debugMessage:
                'All ${itemsList.length} items in paginated response failed integrity/parsing check',
            rawSource: itemsList.toString(),
          );
        }

        final nextCursorRaw = map['nextCursor'] ??
            map['next'] ??
            map['cursor'] ??
            map['lastElement'];
        final nextCursor = nextCursorRaw?.toString();

        final rawItemsCount = itemsList.length;

        final isLastRaw = map['isLast'];
        final isLast = isLastRaw is bool
            ? isLastRaw
            : (limit != null ? rawItemsCount < limit : false);

        return Result.success(
          PaginatedResponseModel<CategoryItemModel>(
            items: models,
            nextCursor: nextCursor,
            isLast: isLast,
          ),
        );
      }

      // server send list (legacy)
      final list = _asList(raw);
      if (list == null) {
        return _parsingFailure(
          debugMessage:
              'Expected Map (paginated) or List (legacy) but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      if (list.isEmpty) {
        return Result.success(
          PaginatedResponseModel<CategoryItemModel>(
            items: const <CategoryItemModel>[],
            nextCursor: null,
            isLast: true,
          ),
        );
      }

      final models = <CategoryItemModel>[];

      for (final e in list) {
        if (e is! Map<String, dynamic>) {
          _logCorruptItem(reason: 'not a Map', json: {});
          continue;
        }

        final integrityFailure = CategoryItemDataIntegrityMapper.map(e);
        if (integrityFailure != null) {
          _logCorruptItem(reason: integrityFailure, json: e);
          continue;
        }

        try {
          models.add(CategoryItemModel.fromJson(e));
        } on CheckedFromJsonException catch (err) {
          _logCorruptItem(reason: err, json: e);
          continue;
        }
      }

      if (models.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'All ${list.length} items in legacy list response failed integrity/parsing check',
          rawSource: list.toString(),
        );
      }

      final rawItemsCount = list.length;
      final isLast = limit != null ? rawItemsCount < limit : false;

      return Result.success(
        PaginatedResponseModel<CategoryItemModel>(
          items: models,
          nextCursor: null,
          isLast: isLast,
        ),
      );
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<CategoryItemModel, CategoryFailure>> getCategoryItemById({
    required int itemId,
  }) async {
    Object? raw;
    try {
      raw = await client.get(_url('$itemId'));
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final integrityFailure = CategoryItemDataIntegrityMapper.map(json);
      if (integrityFailure != null) {
        return Result.failure(integrityFailure);
      }

      return Result.success(CategoryItemModel.fromJson(json));
    } on DioException catch (e) {
      return _handleDioError(e);
    } on CheckedFromJsonException catch (e, st) {
      return _handleParsingError(e, st, raw);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }

  @override
  Future<Result<String, CategoryFailure>> uploadImage({
    required XFile image,
  }) async {
    Object? raw;
    try {
      raw = await client.upload(
        _url('image'),
        file: image,
        field: 'image',
      );
      final json = _asMap(raw);

      if (json == null) {
        return _parsingFailure(
          debugMessage: 'Expected Map but got ${raw.runtimeType}',
          rawSource: raw?.toString(),
        );
      }

      final url = json['url'];
      if (url is! String || url.isEmpty) {
        return _parsingFailure(
          debugMessage:
              'url missing or not a non-empty String (got ${url.runtimeType})',
          rawSource: json.toString(),
        );
      }

      return Result.success(url);
    } on DioException catch (e) {
      return _handleDioError(e);
    } catch (e, st) {
      return _handleParsingError(e, st, raw);
    }
  }
}
