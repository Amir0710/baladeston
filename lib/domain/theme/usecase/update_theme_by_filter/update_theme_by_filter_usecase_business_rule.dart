import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';

class UpdateThemeByFilterUseCaseBusinessRule {
  final ThemeQueryFilter filter;
  final ThemeEntity theme;

  const UpdateThemeByFilterUseCaseBusinessRule({
    required this.filter,
    required this.theme,
  });

  void validate() {
    _validateFilter();
    _validateFilterNotEmpty();
    _validateFilterRange();
    _validateTheme();
  }

  void _validateFilter() {
    // filter object itself is guaranteed non-null by signature
  }

  void _validateFilterNotEmpty() {
    final hasAnyCondition =
        filter.id != null ||
            (filter.searchTerm != null &&
                filter.searchTerm!.trim().isNotEmpty) ||
            filter.isDark != null;

    if (!hasAnyCondition) {
      throw const ThemeFilterEmptyException();
    }
  }

  void _validateFilterRange() {
    if (filter.limit <= 0) {
      throw const ThemeFilterRangeException();
    }

    if (filter.offset < 0) {
      throw const ThemeFilterRangeException();
    }
  }

  void _validateTheme() {
    // حداقل قوانین پایه‌ی Entity
    if (theme.name.trim().isEmpty) {
      throw const ThemeRequiredFieldException();
    }


  }
}
