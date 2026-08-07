import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';

extension CategoryItemQueryFilterMapper on CategoryItemQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (categoryId != null) {
      query['categoryId'] = categoryId.toString();
    }

    if (adderId != null) {
      query['adderId'] = adderId.toString();
    }

    if (collectionId != null) {
      query['collectionId'] = collectionId.toString();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
