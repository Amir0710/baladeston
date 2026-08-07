import 'package:baladeston/core/enum/category/category/category_order.dart';
import 'package:baladeston/core/enum/category/category_item/category_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_query_filter.freezed.dart';
part 'category_item_query_filter.g.dart';

@freezed
class CategoryItemQueryFilter with _$CategoryItemQueryFilter {
  const factory CategoryItemQueryFilter({
    int? categoryId,
    int? adderId,
    int? collectionId,
    CategoryItemStatus? status,
    @Default(20) int limit,
    @Default(0) int offset,
    @Default(false) bool ascending,
    @Default(CategoryOrder.title) CategoryOrder order,
  }) = _CategoryItemQueryFilter;

  factory CategoryItemQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemQueryFilterFromJson(json);
}
