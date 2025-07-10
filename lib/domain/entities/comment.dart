class Comment {
  final int userId;
  final int targetId;
  final String content;
  final double rating;
  final DateTime createdAt;

  const Comment({
    required this.userId,
    required this.targetId,
    required this.content,
    required this.rating,
    required this.createdAt,
  });
}
