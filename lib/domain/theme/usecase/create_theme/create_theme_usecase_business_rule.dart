import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';

class CreateThemeUseCaseBusinessRule {
  final ThemeEntity theme;

  const CreateThemeUseCaseBusinessRule({
    required this.theme,
  });

  void validate() {
    _validateEntity();
    _validateRequiredFields();
    _validateColors();
  }

  void _validateEntity() {

  }

  void _validateRequiredFields() {
    if (theme.name.trim().isEmpty) {
      throw const ThemeRequiredFieldException();
    }
  }

  void _validateColors() {
    final colors = theme.colors;

    final hasInvalidColor = [
      colors.primary,
      colors.secondary,
      colors.background,
      colors.surface,
      colors.textPrimary,
      colors.textSecondary,
      colors.buttonForeground,
      colors.info,
      colors.success,
      colors.warning,
      colors.error,
      colors.divider,
    ].any((c) => c.trim().isEmpty);

    if (hasInvalidColor || colors.partColors.isEmpty) {
      throw const ThemeColorValidationException();
    }
  }
}
