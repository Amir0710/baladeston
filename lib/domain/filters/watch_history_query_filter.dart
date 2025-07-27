class WatchHistoryQueryFilter {
  final int? userId;
  final int? videoId;
  final bool ascending;
  final int limit;
  final int offset;
  final String orderBy;

  WatchHistoryQueryFilter({
    required this.userId,
    required this.videoId,
    this.ascending = false,
    this.limit = 20,
    this.offset = 0,
    this.orderBy = 'name',
  });
}
