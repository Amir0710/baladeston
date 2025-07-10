class Collection {
  final int id;
  final String title;
  final String password;
  final double price;
  final String status;
  final String? thumbnailUrl;
  final DateTime createdAt;
  final int ownerId;

  const Collection({
    required this.id,
    required this.title,
    required this.password,
    required this.price,
    required this.status,
    this.thumbnailUrl,
    required this.createdAt,
    required this.ownerId,
  });
}
