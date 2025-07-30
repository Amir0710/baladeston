// ignore_for_file: public_member_api_docs, sort_constructors_first
class DiscountQueryFilter {
  final int? userId;
  final int? id;
  final int? categoryID;
  final String? categoryName;
  final int? minPercent;
  final int? maxPercent;
  final String? status;
  final DateTime? expiresAt;

  final bool ascending;
  final String order;
  final int limit;
  final int offset;

  DiscountQueryFilter({
    this.userId,
    this.id,
    this.categoryID,
    this.categoryName,
    this.minPercent,
    this.maxPercent,
    this.status,
    this.expiresAt,
    this.ascending = false,
    this.order = 'expiresAt',
    this.limit = 20,
    this.offset = 0,
  });
}
