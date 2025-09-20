import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:baladeston/domain/entitys/theme/theme_entity.dart';

extension ThemeModelMapper on ThemeModel {
  ThemeEntity toEntity() {
    return ThemeEntity(
      id: id,
      name: name,
      isDark: isDark,
      colors: ThemeColorsEntity(
        info: colors.info,
        error: colors.error,
        divider: colors.divider,
        primary: colors.primary,
        success: colors.success,
        surface: colors.surface,
        warning: colors.warning,
        secondary: colors.secondary,
        background: colors.background,
        textPrimary: colors.textPrimary,
        textSecondary: colors.textSecondary,
        buttonForeground: colors.buttonForeground,
        partColors: List<String>.from(colors.partColors),
      ),
    );
  }
}

extension ThemeEntityMapper on ThemeEntity {
  ThemeModel toModel() {
    return ThemeModel(
      id: id,
      name: name,
      isDark: isDark,
      colors: ThemeColors(
        info: colors.info,
        error: colors.error,
        divider: colors.divider,
        primary: colors.primary,
        success: colors.success,
        surface: colors.surface,
        warning: colors.warning,
        secondary: colors.secondary,
        background: colors.background,
        textPrimary: colors.textPrimary,
        textSecondary: colors.textSecondary,
        buttonForeground: colors.buttonForeground,
        partColors: List<String>.from(colors.partColors),
      ),
    );
  }
}
