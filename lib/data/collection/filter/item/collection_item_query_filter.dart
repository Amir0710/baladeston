import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/core/enum/collection/collection/collection_order.dart';
import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';

part 'collection_item_query_filter.freezed.dart';
part 'collection_item_query_filter.g.dart';

@freezed
class CollectionItemQueryFilter with _$CollectionItemQueryFilter {
  const factory CollectionItemQueryFilter({
    int? collectionId,
    int? adderId ,
    int? videoId ,
    CollectionItemStatus? status,
    @Default(20) int limit,
    @Default(0) int offset,
    @Default(false) bool ascending,
    @Default(CollectionOrder.title) CollectionOrder order,
  }) = _CollectionItemQueryFilter;

  factory CollectionItemQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CollectionItemQueryFilterFromJson(json);
}
