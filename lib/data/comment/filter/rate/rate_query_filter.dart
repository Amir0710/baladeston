import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_query_filter.freezed.dart';
part 'rate_query_filter.g.dart';

@freezed
class RateQueryFilter with _$RateQueryFilter {
  const factory RateQueryFilter({
    required CommentType targetType,
    required int targetId,
  }) = _RateQueryFilter;

  factory RateQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$RateQueryFilterFromJson(json);
}
