class DiscountQueryFilter {
  final int? userId; // '?' for show is general  ?
  final String order;
  final int limit;

  final int offset;

  final int? categoryID;

  final String? categoryName;

  final bool ascending;
  final int? minPercent;

  final int? maxPercent;

  DiscountQueryFilter({
    this.minPercent,
    this.maxPercent,
    this.limit = 20,
    this.offset = 0,
    this.userId,
    this.order = 'expiresAt',
    this.categoryID,
    this.categoryName,
    this.ascending = false,
  });
}
