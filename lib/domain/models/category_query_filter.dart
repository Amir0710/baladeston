class CategoryQueryFilter {
  final String? searchTerm;
  final int limit;
  final int offset;
  final String? orderBy;
  final int? minCount;
  final int? maxCount;
  final bool ascending;

  CategoryQueryFilter({
    this.limit = 20,
    this.offset = 0,
    this.searchTerm,
    this.orderBy,
    this.minCount,
    this.maxCount,
    this.ascending = false,
  });
}
