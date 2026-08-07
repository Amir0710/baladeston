import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/core/enum/category/category/category_order.dart';
import 'package:baladeston/core/enum/category/category/category_status.dart';

part 'category_query_filter.freezed.dart';
part 'category_query_filter.g.dart';

@freezed
class CategoryQueryFilter with _$CategoryQueryFilter {
  const factory CategoryQueryFilter({
    String? searchTerm,
    int? searchId,
    CategoryStatus? status,
    int? ownerId,
    int? minCount,
    int? maxCount,

    @Default(20) int limit,
    @Default(0) int offset,
    @Default(false) bool ascending,
    @Default(CategoryOrder.title) CategoryOrder order,
  }) = _CategoryQueryFilter;

  factory CategoryQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryQueryFilterFromJson(json);
}
