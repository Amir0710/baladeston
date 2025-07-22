class VideoQueryFilter {
  final String? category;
  final int limit;

  final int offset;

  final String? searchTerm;
  final int? uploaderId;
  final int? categoryId;
  final String? categoryName;
  final double? minRating;
  final double? maxRating;
  final DateTime? uploadedAfter;
  final DateTime? uploadedBefore;
  final String orderBy;
  final bool ascending;

  VideoQueryFilter(
      {this.limit = 20,
      this.offset = 0,
      this.category,
      this.searchTerm,
      this.uploaderId,
      this.categoryId,
      this.categoryName,
      this.minRating,
      this.maxRating,
      this.uploadedAfter,
      this.uploadedBefore,
      this.orderBy = 'name',
      this.ascending = false});
}
