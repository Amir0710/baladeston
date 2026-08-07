import 'package:baladeston/data/category/filter/model/category_query_filter.dart';

extension CategoryQueryFilterMapper on CategoryQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (searchTerm != null && searchTerm!.isNotEmpty) {
      query['search'] = searchTerm!;
    }

    if (searchId != null) {
      query['searchId'] = searchId.toString();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (ownerId != null) {
      query['ownerId'] = ownerId.toString();
    }

    if (minCount != null) {
      query['minCount'] = minCount.toString();
    }

    if (maxCount != null) {
      query['maxCount'] = maxCount.toString();
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
