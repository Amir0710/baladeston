import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';

extension DiscountQueryFilterMapper on DiscountQueryFilter {
  Map<String, String> toQuery() {
    final query = <String, String>{};

    if (ownerId != null) {
      query['ownerId'] = ownerId.toString();
    }

    if (ids != null && ids!.isNotEmpty) {
      query['ids'] = ids!.join(',');
    }

    if (title != null) {
      query['title'] = title!;
    }

    if (targetId != null) {
      query['targetId'] = targetId.toString();
    }

    if (targetType != null) {
      query['targetType'] = targetType!.name;
    }

    if (minPercent != null) {
      query['minPercent'] = minPercent.toString();
    }

    if (maxPercent != null) {
      query['maxPercent'] = maxPercent.toString();
    }

    if (status != null) {
      query['status'] = status!.name;
    }

    if (createAt != null) {
      query['createAt'] = createAt!.toIso8601String();
    }

    if (userCreated != null) {
      query['userCreated'] = userCreated.toString();
    }

    if (expiresAt != null) {
      query['expiresAt'] = expiresAt!.toIso8601String();
    }

    if (maxUse != null) {
      query['maxUse'] = maxUse.toString();
    }

    if (usage != null) {
      query['usage'] = usage.toString();
    }

    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();
    query['order'] = order.name;

    return query;
  }
}