import 'package:baladeston/core/enum/category/category/category_order.dart';
import 'package:baladeston/core/enum/category/category_item/category_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_query_filter.freezed.dart';
part 'category_item_query_filter.g.dart';

@freezed
class CategoryItemQueryFilter with _$CategoryItemQueryFilter {
  const factory CategoryItemQueryFilter({
    String? searchTerm,
    List<int>? ids,
    int? minCount,
    int? maxCount,

    int? minPrice ,
    int? maxPrice,
    int? categoryId,
    int? adderId,
    int? collectionId,
    double? minRating,
    CategoryItemStatus? status,
    @Default(20) int limit,
    String? cursor,
    @Default(false) bool ascending,
    @Default(CategoryOrder.createdAt) CategoryOrder order,
  }) = _CategoryItemQueryFilter;

  factory CategoryItemQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemQueryFilterFromJson(json);
}
