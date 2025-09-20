import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_entity.freezed.dart';

@freezed
class ThemeEntity with _$ThemeEntity {
  const factory ThemeEntity({
    int? id,
    required String name,
    required bool isDark,
    required ThemeColorsEntity colors,
  }) = _ThemeEntity;
}

@freezed
class ThemeColorsEntity with _$ThemeColorsEntity {
  const factory ThemeColorsEntity({
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
  }) = _ThemeColorsEntity;
}
