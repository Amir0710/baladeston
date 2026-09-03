import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';

extension ReactionQueryFilterMapper on ReactionQueryFilter {
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

    if (reactionType != null) {
      query['reactionType'] = reactionType!.name;
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
