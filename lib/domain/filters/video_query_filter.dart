class VideoQueryFilter {
  final int? id;
  final String? category;
  final String? searchTerm;
  final String? status;
  final int? uploaderId;
  final int? categoryId;
  final double? minRating;
  final double? maxRating;
  final DateTime? uploadedAfter;
  final DateTime? uploadedBefore;

  final String orderBy;
  final bool ascending;
  final int limit;
  final int offset;

  VideoQueryFilter({
    this.id,
    this.category,
    this.searchTerm,
    this.status,
    this.uploaderId,
    this.categoryId,
    this.minRating,
    this.maxRating,
    this.uploadedAfter,
    this.uploadedBefore,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
