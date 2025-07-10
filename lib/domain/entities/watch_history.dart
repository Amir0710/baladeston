class WatchHistory {
  final int userId;
  final int videoId;
  final int lastPositionSeconds;
  final DateTime updatedAt;

  const WatchHistory({
    required this.userId,
    required this.videoId,
    required this.lastPositionSeconds,
    required this.updatedAt,
  });
}
