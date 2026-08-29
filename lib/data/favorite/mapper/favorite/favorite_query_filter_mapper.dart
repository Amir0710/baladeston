import 'package:baladeston/data/favorite/filter/favorite/favorite_query_filter.dart';

extension FavoriteQueryFilterMapper on FavoriteQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (userId != null) {
      query['userId'] = userId.toString();
    }

    if (toggleId != null) {
      query['toggleId'] = toggleId.toString();
    }

    if (interestedIn != null) {
      query['interestedIn'] = interestedIn!.toIso8601String();
    }

    if (favoriteType != null) {
      query['favoriteType'] = favoriteType!.name;
    }

    if (targetType != null) {
      query['targetType'] = targetType!.name;
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['orderBy'] = orderBy.name;

    return query;
  }
}
