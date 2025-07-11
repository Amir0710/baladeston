class CommentQueryFilter {
  final int videoId;
  final int? userId;
  final String? contentContains;
  final double? minRating;
  final double? maxRating;

  final DateTime? createdAfter;
  final DateTime? createdBefore;

  final String? orderBy;
  final bool ascending;

  final int limit;
  final int offset;

  const CommentQueryFilter({
    required this.videoId,
    this.userId,
    this.contentContains,
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
