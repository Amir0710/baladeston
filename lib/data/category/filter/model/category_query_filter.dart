import 'package:baladeston/core/enum/category/category/category_order.dart';
import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:baladeston/core/enum/category/category/category_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_query_filter.freezed.dart';
part 'category_query_filter.g.dart';

@freezed
class CategoryQueryFilter with _$CategoryQueryFilter {
  const factory CategoryQueryFilter({
    List<int>? ids,
    String? searchTerm,
    CategoryStatus? status ,
    CategoryType? type,
    int? ownerId,
    int? minCount,
    int? maxCount,
    double? minRating,
    @Default(20) int limit,
    String? cursor,
    @Default(false) bool ascending,
    @Default(CategoryOrder.createdAt) CategoryOrder order,
  }) = _CategoryQueryFilter;

  factory CategoryQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryQueryFilterFromJson(json);
}
