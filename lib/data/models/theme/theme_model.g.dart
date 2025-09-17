// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ThemeModel _$ThemeModelFromJson(Map<String, dynamic> json) => _ThemeModel(
      id: (json['id'] as num?)?.toInt(),
      primary: json['primary'] as String,
      secondary: json['secondary'] as String,
      background: json['background'] as String,
      buttonForeground: json['buttonForeground'] as String,
      surface: json['surface'] as String,
      error: json['error'] as String,
      success: json['success'] as String,
      warning: json['warning'] as String,
      info: json['info'] as String,
      divider: json['divider'] as String,
      textPrimary: json['textPrimary'] as String,
      textSecondary: json['textSecondary'] as String,
      partColors: (json['partColors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ThemeModelToJson(_ThemeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'primary': instance.primary,
      'secondary': instance.secondary,
      'background': instance.background,
      'buttonForeground': instance.buttonForeground,
      'surface': instance.surface,
      'error': instance.error,
      'success': instance.success,
      'warning': instance.warning,
      'info': instance.info,
      'divider': instance.divider,
      'textPrimary': instance.textPrimary,
      'textSecondary': instance.textSecondary,
      'partColors': instance.partColors,
    };
