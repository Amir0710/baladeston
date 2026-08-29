import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';

extension CollectionItemQueryFilterMapper on CollectionItemQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }

    if (collectionId != null) {
      query['collectionId'] = collectionId.toString();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (adderId != null) {
      query['adderId'] = adderId.toString();
    }

    if (minRating != null) {
      query['minRating'] = minRating.toString();
    }

    query['limit'] = limit.toString();
    query['cursor'] = cursor.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
