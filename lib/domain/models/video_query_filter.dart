class VideoQueryFilter {
  final String? category;
  final String? titleContains;
  final int? uploaderId;
  final int? collectionId;
  final double? minRating;
  final DateTime? uploadedAfter;
  final DateTime? uploadedBefore;
  final String orderBy;
  final bool ascending;

  const VideoQueryFilter({
    this.category,
    this.titleContains,
    this.uploaderId,
    this.collectionId,
    this.minRating,
    this.uploadedAfter,
    this.uploadedBefore,
    this.orderBy = 'uploaded_at',
    this.ascending = false,
  });
}
