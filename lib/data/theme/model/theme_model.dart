import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_model.freezed.dart';

part 'theme_model.g.dart';

@freezed
abstract class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    int? id,
    required String name,
    required bool isDark,
    required ThemeColors colors,
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}

@freezed
class ThemeColors with _$ThemeColors {
  const factory ThemeColors({
    required String info,
    required String error,
    required String divider,
    required String primary,
    required String success,
    required String surface,
    required String warning,
    required String secondary,
    required String background,
    required String textPrimary,
    required String textSecondary,
    required String buttonForeground,
    required List<String> partColors,
  }) = _ThemeColors;

  factory ThemeColors.fromJson(Map<String, dynamic> json) =>
      _$ThemeColorsFromJson(json);
}
