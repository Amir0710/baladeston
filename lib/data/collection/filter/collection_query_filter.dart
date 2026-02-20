class CollectionQueryFilter {
  final int? id;
  final String? searchTerm;
  final int? searchId;
  final String? status;
  final int? ownerId;
  final int? minCount;
  final int? maxCount;

  final int limit;
  final int offset;
  final bool ascending;
  final String order;
  CollectionQueryFilter({
    this.id,
    this.searchTerm,
    this.searchId,
    this.status,
    this.ownerId,
    this.minCount,
    this.maxCount,
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
    this.order = 'name',
  });
}
