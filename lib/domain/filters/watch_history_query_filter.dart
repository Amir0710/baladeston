class WatchHistoryQueryFilter {
  final int? id;
  final int? userId;
  final int? videoId;
  final int? lastPositionSeconds;
  final DateTime? updatedAt;
  final bool ascending;
  final int limit;
  final int offset;
  final String orderBy;

  WatchHistoryQueryFilter({
    this.id,
    this.userId,
    this.videoId,
    this.lastPositionSeconds,
    this.updatedAt,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
