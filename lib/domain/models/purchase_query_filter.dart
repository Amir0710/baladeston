class PurchaseQueryFilter {
  final String? status;
  final String? searchTerm;
  final int? searchId;
  final int limit;
  final int offset;
  final String? videoSearchTerm; // for search name in cart
  final int? videoSearchId; // for search id in cart
  final bool ascending;
  final String orderBy;

  PurchaseQueryFilter(
      {this.status,
      this.searchTerm,
      this.searchId,
      this.limit = 20,
      this.videoSearchTerm,
      this.videoSearchId,
      this.offset = 0,
      this.ascending = false,
      this.orderBy = 'purchaseTime'});
}
