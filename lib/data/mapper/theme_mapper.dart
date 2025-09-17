import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:baladeston/domain/entitys/theme/theme_entity.dart';

extension ThemeModelMapper on ThemeModel {
  ThemeEntity toEntity() {
    return ThemeEntity(
      id: id ,
      primary: primary,
      secondary: secondary,
      background: background,
      buttonForeground: buttonForeground,
      surface: surface,
      error: error,
      success: success,
      warning: warning,
      info: info,
      divider: divider,
      textPrimary: textPrimary,
      textSecondary: textSecondary,
      partColors: partColors,
    );
  }
}

extension ThemeEntityMapper on ThemeEntity {
  ThemeModel toModel() {
    return ThemeModel(
      id: id,
      primary: primary,
      secondary: secondary,
      background: background,
      buttonForeground: buttonForeground,
      surface: surface,
      error: error,
      success: success,
      warning: warning,
      info: info,
      divider: divider,
      textPrimary: textPrimary,
      textSecondary: textSecondary,
      partColors: partColors,
    );
  }
}
