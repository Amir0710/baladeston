class Video {
  final int id;
  final String title;
  final String? description;
  final String videoUrl;
  final String? thumbnailUrl;
  final String status;
  final int uploaderId;
  final int collectionId;
  final DateTime uploadedAt;

  const Video({
    required this.id,
    required this.title,
    this.description,
    required this.videoUrl,
    this.thumbnailUrl,
    required this.status,
    required this.uploaderId,
    required this.collectionId,
    required this.uploadedAt,
  });
}
