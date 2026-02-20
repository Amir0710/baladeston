import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';

class CountThemeUseCaseBusinessRule {
  final ThemeQueryFilter filter;

  const CountThemeUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateFilter();
  }

  void _validateFilter() {
    /// Soft bulk guard: filter must not be empty
    final isFilterEmpty =
        filter.id == null && filter.searchTerm == null && filter.isDark == null;

    if (isFilterEmpty) {
      throw const ThemeFilterEmptyException();
    }

    /// Range validation
    if (filter.limit <= 0) {
      throw const ThemeFilterRangeException();
    }

    if (filter.offset < 0) {
      throw const ThemeFilterRangeException();
    }
  }
}
