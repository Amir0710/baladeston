import 'package:baladeston/domain/filters/user_query_filter.dart';

extension UserQueryFilterMapper on UserQueryFilter {
  Map<String, String> toJson() {
    String? _asString(dynamic value) {
      if (value == null) return null;
      if (value is DateTime) return value.toIso8601String();
      return value.toString();
    }

    final map = <String, String>{};
    final raw = {
      'id': id,
      'search_term': searchTerm,
      'order_by': orderBy,
      'limit': limit,
      'offset': offset,
      'ascending': ascending,
      'status': status,
      'email': email,
      'phone_number': phoneNumber,
      'password': password,
      'create_at': createAt,
    };

    raw.forEach((k, v) {
      final s = _asString(v);
      if (s != null && s.isNotEmpty) map[k] = s;
    });

    return map;
  }

  Map<String, String> toCountJson() {
    final map = toJson()
      ..remove('order_by')
      ..remove('limit')
      ..remove('offset')
      ..remove('ascending');
    return map;
  }
}

extension UserQueryFilterFromJson on Map<String, dynamic> {
  UserQueryFilter toUserQueryFilter() {
    return UserQueryFilter(
      id: this['id'] != null ? int.tryParse(this['id'].toString()) : null,
      searchTerm: this['search_term']?.toString(),
      email: this['email']?.toString(),
      phoneNumber: this['phone_number']?.toString(),
      status: this['status']?.toString(),
      password: this['password']?.toString(),
      createAt: this['create_at'] != null
          ? DateTime.tryParse(this['create_at'].toString())
          : null,
      orderBy: this['order_by']?.toString() ?? 'name',
      limit: this['limit'] != null
          ? int.tryParse(this['limit'].toString()) ?? 20
          : 20,
      offset: this['offset'] != null
          ? int.tryParse(this['offset'].toString()) ?? 0
          : 0,
      ascending: this['ascending']?.toString().toLowerCase() == 'true',
    );
  }
}
