
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';

extension CollectionQueryFilterMapper on CollectionQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (searchTerm != null && searchTerm!.isNotEmpty) {
      query['search'] = searchTerm!;
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (minCount != null) {
      query['minCount'] = minCount.toString();
    }

    if (maxCount != null) {
      query['maxCount'] = maxCount.toString();
    }

    if (minPrice != null) {
      query['minPrice'] = minPrice!.toString();
    }

    if (maxPrice != null) {
      query['maxPrice'] = maxPrice!.toString();
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
