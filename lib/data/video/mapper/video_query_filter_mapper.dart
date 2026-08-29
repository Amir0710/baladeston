import 'package:baladeston/data/video/filter/video_query_filter.dart';

extension VideoQueryFilterMapper on VideoQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }

    if (searchTerm != null && searchTerm!.trim().isNotEmpty) {
      query['search'] = searchTerm!.trim();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (uploaderId != null) {
      query['uploaderId'] = uploaderId.toString();
    }

    if (recommendedAge != null) {
      query['recommendedAge'] = recommendedAge.toString();
    }

    if (level != null) {
      query['level'] = level!.name;
    }

    if (minRating != null) {
      query['minRating'] = minRating.toString();
    }

    if (uploadedAfter != null) {
      query['uploadedAfter'] = uploadedAfter!.toIso8601String();
    }

    if (uploadedBefore != null) {
      query['uploadedBefore'] = uploadedBefore!.toIso8601String();
    }

    if (videoDuration != null) {
      query['videoDuration'] = videoDuration.toString();
    }

    if (ownerId != null) {
      query['ownerId'] = ownerId.toString();
    }

    if (minPrice != null) {
      query['minPrice'] = minPrice.toString();
    }

    if (maxPrice != null) {
      query['maxPrice'] = maxPrice.toString();
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
