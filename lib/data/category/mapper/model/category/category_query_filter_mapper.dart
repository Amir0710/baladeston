import 'package:baladeston/data/category/filter/model/category_query_filter.dart';

extension CategoryQueryFilterMapper on CategoryQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }

    if (searchTerm != null && searchTerm!.isNotEmpty) {
      query['search'] = searchTerm!;
    }


    if (status != null) {
      query['status'] = status!.name;
    }

    if (type != null) {
      query['type'] = type!.name;
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
