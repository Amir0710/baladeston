import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';

extension CategoryItemQueryFilterMapper on CategoryItemQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }

    if (searchTerm != null && searchTerm!.isNotEmpty) {
      query['search'] = searchTerm!;
    }

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

    if (minCount != null) {
      query['minCount'] = minCount.toString();
    }

    if (maxCount != null) {
      query['maxCount'] = maxCount.toString();
    }

    if (minPrice != null) {
      query['minPrice'] = minPrice.toString();
    }

    if (maxPrice != null) {
      query['maxPrice'] = maxPrice.toString();
    }

    if (minRating != null) {
      query['minRating'] = minRating.toString();
    }

    query['limit'] = limit.toString();
    if (cursor != null) {
      query['cursor'] = cursor!;
    }
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}
