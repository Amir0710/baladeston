import 'package:baladeston/core/enum/reaction/reaction_order.dart';
import 'package:baladeston/core/enum/reaction/reaction_type.dart';
import 'package:baladeston/core/enum/reaction/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_query_filter.freezed.dart';
part 'reaction_query_filter.g.dart';

@freezed
class ReactionQueryFilter with _$ReactionQueryFilter {
  const factory ReactionQueryFilter({
    List<int>? ids,
    int? userId,
    int? toggleId,
    DateTime? interestedIn,
    ReactionType? reactionType,
    TargetType? targetType,
    @Default(false) bool ascending,
    @Default(20) int limit,
    @Default(0) int offset,
    @Default(ReactionOrder.interestedIn) ReactionOrder orderBy,
  }) = _ReactionQueryFilter;

  factory ReactionQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$ReactionQueryFilterFromJson(json);
}
