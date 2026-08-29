  import 'package:baladeston/core/enum/collection/collection/collection_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
  import 'package:baladeston/core/enum/collection/collection/collection_order.dart';
  import 'package:baladeston/core/enum/collection/collection/collection_status.dart';

  part 'collection_query_filter.freezed.dart';
  part 'collection_query_filter.g.dart';

  @freezed
  class CollectionQueryFilter with _$CollectionQueryFilter {
    const factory CollectionQueryFilter({
      List<int>? ids,
      String? searchTerm,
      int? ownerId,
      CollectionStatus? status,
      CollectionType? type,

      int? minCount,
      int? maxCount,
      int? minPrice,
      int? maxPrice,
      double? minRating,

      @Default(20) int limit,
      String? cursor,

      @Default(false) bool ascending,
      @Default(CollectionOrder.createdAt) CollectionOrder order,
    }) = _CollectionQueryFilter;

    factory CollectionQueryFilter.fromJson(Map<String, dynamic> json) =>
        _$CollectionQueryFilterFromJson(json);
  }

