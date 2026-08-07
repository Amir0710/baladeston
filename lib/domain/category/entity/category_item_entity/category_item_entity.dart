import 'package:baladeston/core/enum/category/category_item/category_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_entity.freezed.dart';

@freezed
abstract class CategoryItemEntity with _$CategoryItemEntity {
  const factory CategoryItemEntity({
    int? id,
    CategoryItemStatus? status,
    DateTime? addedAt,
    DateTime? lastTransaction,
    required int adderId,
    required int collectionId,
    required int categoryId,
  }) = _CategoryItemEntity;
}
