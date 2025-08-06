// domain/datasources/remote/collection_api.dart
import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';

abstract class CollectionApi {
  /// دریافت لیست مجموعه‌ها با فیلتر
  Future<List<CollectionEntity>> getCollections({
    required CollectionQueryFilter filter
  });

  /// ایجاد مجموعه جدید
  Future<CollectionEntity> createCollection({
    required CollectionEntity collection
  });

  /// به‌روزرسانی مجموعه موجود
  Future<CollectionEntity> updateCollection({
    required CollectionEntity collection
  });

  /// حذف مجموعه
  Future<void> deleteCollection({
    required int id
  });

  /// شمارش کل مجموعه‌ها با فیلتر
  Future<int> countAllCollections({
    required CollectionQueryFilter filter
  });
}
