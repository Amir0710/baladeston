// ignore_for_file: public_member_api_docs, sort_constructors_first
class CommentQueryFilter {
  final int? userId;
  final int? targetId;
  final String? content;
  final String? searchTerm;
  final double? minRating;
  final double? maxRating;
  final DateTime? createdAfter;
  final DateTime? createdBefore;

  final String orderBy;
  final bool ascending;
  final int limit;
  final int offset;

  const CommentQueryFilter({
    this.userId,
    this.targetId,
    this.content,
    this.searchTerm,
    this.minRating,
    this.maxRating,
    this.createdAfter,
    this.createdBefore,
    this.orderBy = 'createdAt',
    this.ascending = false,
    this.limit = 20,
    this.offset = 0,
  });
}
