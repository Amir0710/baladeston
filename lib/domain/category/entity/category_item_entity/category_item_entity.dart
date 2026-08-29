import 'package:baladeston/core/enum/category/category_item/category_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_entity.freezed.dart';

@freezed
abstract class CategoryItemEntity with _$CategoryItemEntity {
  const factory CategoryItemEntity({
    int? id,
    String? title ,
    required int collectionId,
    required int categoryId,
    double? avgRate,
    int? rageCount ,
    String? thumbnailUrl,
    CategoryItemStatus? status,
    int? count,
    int? price,
    DateTime? addedAt,
    DateTime? lastTransaction,
    int? adderId,
  }) = _CategoryItemEntity;
}