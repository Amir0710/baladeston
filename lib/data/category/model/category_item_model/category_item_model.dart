import 'package:baladeston/core/enum/category/category_item/category_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_model.freezed.dart';
part 'category_item_model.g.dart';

@freezed
abstract class CategoryItemModel with _$CategoryItemModel {
  const CategoryItemModel._();

  const factory CategoryItemModel({
    int? id,
    CategoryItemStatus? status,
    DateTime? addedAt,
    DateTime? lastTransaction,
    required int adderId,
    required int collectionId,
    required int categoryId,
  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}
