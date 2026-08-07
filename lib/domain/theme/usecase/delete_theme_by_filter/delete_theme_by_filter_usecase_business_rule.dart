import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';

class DeleteThemeByFilterUseCaseBusinessRule {
  final ThemeQueryFilter filter;

  const DeleteThemeByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateFilter();
  }

  void _validateFilter() {
    if (filter == 'null') {
      throw const ThemeFilterNullException();
    }
  }
}
