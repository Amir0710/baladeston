
class UserQueryFilter {
  final int? id;
  final String? searchTerm;
  final String? email;
  final String? phoneNumber;
  final String? status;
  final String? role;

  final String orderBy;
  final int limit;
  final int offset;
  final bool ascending;

  UserQueryFilter({
    this.id,
    this.searchTerm,
    this.email,
    this.phoneNumber,
    this.status,
    this.role,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
