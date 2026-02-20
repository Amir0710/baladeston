import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';

class GetAllThemeUseCaseBusinessRule {
  final ThemeQueryFilter filter;

  const GetAllThemeUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateFilter();
    _validateNotEmpty();
    _validateRange();
  }

  void _validateFilter() {

  }

  void _validateNotEmpty() {
    final hasAnyCondition = filter.id != null ||
        (filter.searchTerm != null &&
            filter.searchTerm!.trim().isNotEmpty) ||
        filter.isDark != null;

    if (!hasAnyCondition) {
      throw const ThemeFilterEmptyException();
    }
  }

  void _validateRange() {
    if (filter.limit <= 0) {
      throw const ThemeFilterRangeException();
    }

    if ( filter.offset < 0) {
      throw const ThemeFilterRangeException();
    }
  }
}
