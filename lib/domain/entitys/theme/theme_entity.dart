import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_entity.freezed.dart';

@freezed
abstract class ThemeEntity with _$ThemeEntity {
  const factory ThemeEntity({
     int ?id ,
    required String primary,
    required String secondary,
    required String background,
    required String buttonForeground,
    required String surface,
    required String error,
    required String success,
    required String warning,
    required String info,
    required String divider,
    required String textPrimary,
    required String textSecondary,
    required List<String> partColors,
  }) = _ThemeEntity;
}
