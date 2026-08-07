import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/core/enum/collection/collection/collection_order.dart';
import 'package:baladeston/core/enum/collection/collection/collection_status.dart';

part 'collection_query_filter.freezed.dart';
part 'collection_query_filter.g.dart';

@freezed
class CollectionQueryFilter with _$CollectionQueryFilter {
  const factory CollectionQueryFilter({
    String? searchTerm,
    int? ownerId,
    CollectionStatus? status,
    int? minCount,
    int? maxCount,
    int? minPrice,
    int? maxPrice,

    @Default(20) int limit,
    @Default(0) int offset,
    @Default(false) bool ascending,
    @Default(CollectionOrder.title) CollectionOrder order,
  }) = _CollectionQueryFilter;

  factory CollectionQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CollectionQueryFilterFromJson(json);
}
