class UserQueryFilter {
  final int? id;
  final String? searchTerm;
  final String? email;
  final String? phoneNumber;
  final String? status;
  final String? password;
  final DateTime? createAt;
  final DateTime? birthday;

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
    this.birthday,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}

/// ------------------------------------------------------
/// Query string mapper
/// ------------------------------------------------------
extension UserQueryFilterMapper on UserQueryFilter {
  String toQueryString() {
    final Map<String, String> query = {};

    if (id != null) query['id'] = id.toString();
    if (searchTerm != null) query['searchTerm'] = searchTerm!;
    if (email != null) query['email'] = email!;
    if (phoneNumber != null) query['phoneNumber'] = phoneNumber!;
    if (status != null) query['status'] = status!;
    if (password != null) query['password'] = password!;

    if (createAt != null) {
      query['createAt'] = createAt!.toIso8601String();
    }

    if (birthday != null) {
      query['birthday'] = birthday!.toIso8601String();
    }

    // Pagination & sorting
    query['orderBy'] = orderBy;
    query['limit'] = limit.toString();
    query['offset'] = offset.toString();
    query['ascending'] = ascending.toString();

    if (query.isEmpty) return '';

    return '?$Uri(queryParameters: query).query}';
  }
}
