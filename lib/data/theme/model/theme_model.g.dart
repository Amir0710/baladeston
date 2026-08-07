// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ThemeModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ThemeModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String),
          isDark: $checkedConvert('isDark', (v) => v as bool),
          colors: $checkedConvert(
              'colors', (v) => ThemeColors.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isDark': instance.isDark,
      'colors': instance.colors,
    };

_$ThemeColorsImpl _$$ThemeColorsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ThemeColorsImpl',
      json,
      ($checkedConvert) {
        final val = _$ThemeColorsImpl(
          info: $checkedConvert('info', (v) => v as String),
          error: $checkedConvert('error', (v) => v as String),
          divider: $checkedConvert('divider', (v) => v as String),
          primary: $checkedConvert('primary', (v) => v as String),
          success: $checkedConvert('success', (v) => v as String),
          surface: $checkedConvert('surface', (v) => v as String),
          warning: $checkedConvert('warning', (v) => v as String),
          secondary: $checkedConvert('secondary', (v) => v as String),
          background: $checkedConvert('background', (v) => v as String),
          textPrimary: $checkedConvert('textPrimary', (v) => v as String),
          textSecondary: $checkedConvert('textSecondary', (v) => v as String),
          buttonForeground:
              $checkedConvert('buttonForeground', (v) => v as String),
          partColors: $checkedConvert('partColors',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
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
