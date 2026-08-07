import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';

extension CollectionItemQueryFilterMapper on CollectionItemQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (collectionId != null) {
      query['collectionId'] = collectionId.toString();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (adderId != null) {
      query['adderId'] = adderId.toString();
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
