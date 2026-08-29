import 'package:baladeston/core/enum/comment/comment_order.dart';
import 'package:baladeston/core/enum/comment/comment_status.dart';
import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_query_filter.freezed.dart';
part 'comment_query_filter.g.dart';

@freezed
class CommentQueryFilter with _$CommentQueryFilter {
  const factory CommentQueryFilter({
    List<int>? ids,
    int? userId,
    int? targetId,
    CommentType? commentType,
    String? searchTerm,
    DateTime? createdAfter,
    DateTime? createdBefore,
    CommentStatus? status,
    @Default(CommentOrder.createdAt) CommentOrder orderBy,
    @Default(false) bool ascending,
    @Default(20) int limit,
    String? cursor,
  }) = _CommentQueryFilter;

  factory CommentQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CommentQueryFilterFromJson(json);
}
