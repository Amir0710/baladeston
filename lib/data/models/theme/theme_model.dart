import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

@freezed
abstract class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    int? id,
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
  }) = _ThemeModel;

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}
