import 'package:meta/meta.dart';

@immutable
class ThemeQueryFilter {
  final int? id;
  final String? searchTerm;
  final bool? isDark;

  final String orderBy;
  final int limit;
  final int offset;
  final bool ascending;

  const ThemeQueryFilter({
    this.id,
    this.searchTerm,
    this.isDark,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });

  String toQueryString() {
    final params = <String, String>{};

    if (id != null) params['id'] = id.toString();
    if (searchTerm != null && searchTerm!.isNotEmpty) {
      params['searchTerm'] = searchTerm!;
    }
    if (isDark != null) params['isDark'] = isDark.toString();

    params['orderBy'] = orderBy;
    params['limit'] = limit.toString();
    params['offset'] = offset.toString();
    params['ascending'] = ascending.toString();

    if (params.isEmpty) return '';

    return '?${Uri(queryParameters: params).query}';
  }

  @override
  String toString() => 'ThemeQueryFilter(${toQueryString()})';
}
