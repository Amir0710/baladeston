class Discount {
  final int? userId ;
  final int id;
  final int category;
  final int percent;
  final String status;
  final DateTime expiresAt;

  const Discount( {
    this.userId,
    required this.id,
    required this.category,
    required this.percent,
    required this.status,
    required this.expiresAt,
  });
}
