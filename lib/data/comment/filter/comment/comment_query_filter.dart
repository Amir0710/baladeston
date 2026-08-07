import 'package:baladeston/core/enum/comment/comment_status.dart';
import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_query_filter.freezed.dart';
part 'comment_query_filter.g.dart';

@freezed
class CommentQueryFilter with _$CommentQueryFilter {
  const factory CommentQueryFilter({
    int? userId,
    int? targetId,
    CommentType? commentType,
    String? content,
    String? searchTerm,
    double? minRating,
    double? maxRating,
    DateTime? createdAfter,
    DateTime? createdBefore,
    CommentStatus? status,
    @Default('createdAt') String orderBy,
    @Default(false) bool ascending,
    @Default(20) int limit,
    @Default(0) int offset,
  }) = _CommentQueryFilter;

  factory CommentQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$CommentQueryFilterFromJson(json);
}
