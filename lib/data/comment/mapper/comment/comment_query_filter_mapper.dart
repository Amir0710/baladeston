
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';

extension CommentQueryFilterMapper on CommentQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};



    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }


    if (userId != null) {
      query['userId'] = userId.toString();
    }

    if (targetId != null) {
      query['targetId'] = targetId.toString();
    }

    if (commentType != null) {
      query['commentType'] = commentType!.name;
    }


    if (searchTerm != null && searchTerm!.isNotEmpty) {
      query['search'] = searchTerm!;
    }

    if (minRating != null) {
      query['minRating'] = minRating.toString();
    }

    if (maxRating != null) {
      query['maxRating'] = maxRating.toString();
    }

    if (createdAfter != null) {
      query['createdAfter'] = createdAfter!.toIso8601String();
    }

    if (createdBefore != null) {
      query['createdBefore'] = createdBefore!.toIso8601String();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    // Default values and pagination
    query['orderBy'] = orderBy.name;
    query['ascending'] = ascending.toString();
    query['limit'] = limit.toString();
    query['cursor'] = cursor.toString();

    return query;
  }
}
