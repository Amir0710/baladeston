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
    required String info, // small text color
    required String error, // error text color
    required String divider,
    required String primary, // app main color
    required String success,
    required String surface, // widget on background
    required String warning,
    required String secondary, // app secondary color (pale)
    required String background,
    required String textPrimary, // main text color
    required String textSecondary, // opposite text color
    required String buttonForeground,
    required List<String> partColors,
  }) = _ThemeColorsEntity;
}
