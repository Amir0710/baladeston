
class UserQueryFilter {
  final int? id;
  final String? searchTerm;
  final String? email;
  final String? phoneNumber;
  final String? status;
  final String? password;
  final DateTime? createAt ;

  final String orderBy;
  final int limit;
  final int offset;
  final bool ascending;

  UserQueryFilter({
    this.createAt,
    this.password,
    this.id,
    this.searchTerm,
    this.email,
    this.phoneNumber,
    this.status,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
