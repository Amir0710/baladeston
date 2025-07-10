class Discount {
  final int id;
  final String category;
  final int percent;
  final String status;
  final DateTime? expiresAt;

  const Discount({
    required this.id,
    required this.category,
    required this.percent,
    required this.status,
    this.expiresAt,
  });
}
