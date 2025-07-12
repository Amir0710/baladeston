class Purchase {
  final int id;
  final String status ;
  final int userId;
  final int collectionId;
  final int? discountId;
  final double finalPrice;
  final DateTime purchaseTime;
  final DateTime? expiresAt;

  const Purchase({
    required this.status,
    required this.id,
    required this.userId,
    required this.collectionId,
    this.discountId,
    required this.finalPrice,
    required this.purchaseTime,
    this.expiresAt,
  });
}
