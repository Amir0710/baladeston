// ignore_for_file: public_member_api_docs, sort_constructors_first
class PurchaseQueryFilter {
  final int? id;
  final String? status;
  final int? userId;
  final int? categoryId;
  final int? discountId;
  final double? finalPrice;
  final DateTime? purchaseTime;
  final DateTime? updateAt;
  final String? searchTerm;
  final int? searchId;
  final DateTime? expiresAt;
  final String? videoSearchTerm; // for search name in cart
  final int? videoSearchId; // for search id in cart

  final int limit;
  final int offset;
  final bool ascending;
  final String orderBy;
  PurchaseQueryFilter({
    this.id,
    this.status,
    this.userId,
    this.categoryId,
    this.discountId,
    this.finalPrice,
    this.purchaseTime,
    this.updateAt,
    this.searchTerm,
    this.searchId,
    this.expiresAt,
    this.videoSearchTerm,
    this.videoSearchId,
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
    this.orderBy = 'name',
  });
}
