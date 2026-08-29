import 'package:baladeston/core/enum/favorite/favorite_order.dart';
import 'package:baladeston/core/enum/favorite/favorite_type.dart';
import 'package:baladeston/core/enum/favorite/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_query_filter.freezed.dart';
part 'favorite_query_filter.g.dart';

@freezed
class FavoriteQueryFilter with _$FavoriteQueryFilter {
  const factory FavoriteQueryFilter({
    List<int>? ids,
    int? userId,
    int? toggleId,
    DateTime? interestedIn,
    FavoriteType? favoriteType,
    TargetType? targetType,
    @Default(false) bool ascending,
    @Default(20) int limit,
    @Default(0) int offset,
    @Default(FavoriteOrder.interestedIn) FavoriteOrder orderBy,
  }) = _FavoriteQueryFilter;

  factory FavoriteQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$FavoriteQueryFilterFromJson(json);
}
