import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';

class UpdateThemeByIdUseCaseBusinessRule {
  final int id;
  final ThemeEntity theme;

  const UpdateThemeByIdUseCaseBusinessRule({
    required this.id,
    required this.theme,
  });

  void validate() {
    _validateId();
    _validateTheme();
  }

  void _validateId() {
    if (id <= 0) {
      throw const ThemeIdInvalidException();
    }
  }

  void _validateTheme() {
    if (theme.name.trim().isEmpty) {
      throw const ThemeRequiredFieldException();
    }
  }
}
