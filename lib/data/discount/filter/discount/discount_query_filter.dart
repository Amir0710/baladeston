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
        ownerId, // in user app is not important and i must extract id from token
    List<int>? ids,
    int? targetId,
    DiscountTargetType? targetType,
    String? title,
    int? minPercent,
    int? maxPercent,
    DiscountStatus? status,
    DateTime? createAt,
    bool? userCreated,
    DateTime? expiresAt,
    int? maxUse,
    int? usage,
    @Default(20) int limit,
    @Default(0) int offset,
    @Default(false) bool ascending,
    @Default(DiscountOrder.expiresAt) DiscountOrder order,
  }) = _DiscountQueryFilter;

  factory DiscountQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$DiscountQueryFilterFromJson(json);
}
