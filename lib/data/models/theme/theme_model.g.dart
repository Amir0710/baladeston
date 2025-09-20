// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      isDark: json['isDark'] as bool,
      colors: ThemeColors.fromJson(json['colors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDark': instance.isDark,
      'colors': instance.colors,
    };

_$ThemeColorsImpl _$$ThemeColorsImplFromJson(Map<String, dynamic> json) =>
    _$ThemeColorsImpl(
      info: json['info'] as String,
      error: json['error'] as String,
      divider: json['divider'] as String,
      primary: json['primary'] as String,
      success: json['success'] as String,
      surface: json['surface'] as String,
      warning: json['warning'] as String,
      secondary: json['secondary'] as String,
      background: json['background'] as String,
      textPrimary: json['textPrimary'] as String,
      textSecondary: json['textSecondary'] as String,
      buttonForeground: json['buttonForeground'] as String,
      partColors: (json['partColors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ThemeColorsImplToJson(_$ThemeColorsImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'error': instance.error,
      'divider': instance.divider,
      'primary': instance.primary,
      'success': instance.success,
      'surface': instance.surface,
      'warning': instance.warning,
      'secondary': instance.secondary,
      'background': instance.background,
      'textPrimary': instance.textPrimary,
      'textSecondary': instance.textSecondary,
      'buttonForeground': instance.buttonForeground,
      'partColors': instance.partColors,
    };
