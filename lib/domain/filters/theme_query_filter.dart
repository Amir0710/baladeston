class ThemeQueryFilter {
  final int? id;
  final String? searchTerm;
  final bool? isDark ;

  final String orderBy;
  final int limit;
  final int offset;
  final bool ascending;

  ThemeQueryFilter( {
    this.isDark,
    this.id,
    this.searchTerm,
    this.orderBy = 'name',
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
  });
}
