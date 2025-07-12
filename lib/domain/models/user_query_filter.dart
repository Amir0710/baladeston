
// all of this filter only for admin

class UserQueryFilter {
  final int? id;

  final String? searchTerm;
  final String orderBy;
  final int limit;
  final int offset;
  final bool ascending;

  UserQueryFilter({
    this.id,
    this.searchTerm,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
