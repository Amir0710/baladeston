import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/core/enum/collection/collection/collection_order.dart';
import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';

part 'collection_item_query_filter.freezed.dart';
part 'collection_item_query_filter.g.dart';

@freezed
class CollectionItemQueryFilter with _$CollectionItemQueryFilter {
  const factory CollectionItemQueryFilter({
    String? searchTerm,
    List<int>? ids,
    int? collectionId,
    int? adderId,
    int? videoId,
    double? minRating,
    double? minPrice,
    double? maxPrice,
    CollectionItemStatus? status,
    @Default(20) int limit,
    String? cursor,
    @Default(false) bool ascending,
    @Default(CollectionOrder.createdAt) CollectionOrder order,
  }) = _CollectionItemQueryFilter;

  factory CollectionItemQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CollectionItemQueryFilterFromJson(json);
}
