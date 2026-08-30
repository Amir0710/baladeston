import 'package:baladeston/core/enum/discount/discount_order.dart';
import 'package:baladeston/core/enum/discount/discount_status.dart';
import 'package:baladeston/core/enum/discount/discount_target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_query_filter.freezed.dart';
part 'discount_query_filter.g.dart';

@freezed
class DiscountQueryFilter with _$DiscountQueryFilter {
  const factory DiscountQueryFilter({
    int?
    ownerId, // in user app is not important and i must extract id from token but i need it for admin panel
    List<int>? ids, // validated needed
    int? targetId,  // validated needed
    DiscountTargetType? targetType,
    String? title, // validated needed
    int? minPercent,  // validated needed
    int? maxPercent, // validated needed
    DiscountStatus? status,
    DateTime? createAt,
    bool? userCreated,
    DateTime? expiresAt, // validated needed
    int? maxUse, // validated needed
    int? usage,  // validated needed
    @Default(20) int limit,
    String? cursor,
    @Default(false) bool ascending,
    @Default(DiscountOrder.expiresAt) DiscountOrder order,
  }) = _DiscountQueryFilter;

  factory DiscountQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$DiscountQueryFilterFromJson(json);
}
