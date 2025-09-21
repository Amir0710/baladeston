// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeModel _$ThemeModelFromJson(Map<String, dynamic> json) {
  return _ThemeModel.fromJson(json);
}

/// @nodoc
mixin _$ThemeModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;
  ThemeColors get colors => throw _privateConstructorUsedError;

  /// Serializes this ThemeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) then) =
      _$ThemeModelCopyWithImpl<$Res, ThemeModel>;
  @useResult
  $Res call({int? id, String name, bool isDark, ThemeColors colors});

  $ThemeColorsCopyWith<$Res> get colors;
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res, $Val extends ThemeModel>
    implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? isDark = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ThemeColors,
    ) as $Val);
  }

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeColorsCopyWith<$Res> get colors {
    return $ThemeColorsCopyWith<$Res>(_value.colors, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThemeModelImplCopyWith<$Res>
    implements $ThemeModelCopyWith<$Res> {
  factory _$$ThemeModelImplCopyWith(
          _$ThemeModelImpl value, $Res Function(_$ThemeModelImpl) then) =
      __$$ThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, bool isDark, ThemeColors colors});

  @override
  $ThemeColorsCopyWith<$Res> get colors;
}

/// @nodoc
class __$$ThemeModelImplCopyWithImpl<$Res>
    extends _$ThemeModelCopyWithImpl<$Res, _$ThemeModelImpl>
    implements _$$ThemeModelImplCopyWith<$Res> {
  __$$ThemeModelImplCopyWithImpl(
      _$ThemeModelImpl _value, $Res Function(_$ThemeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? isDark = null,
    Object? colors = null,
  }) {
    return _then(_$ThemeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ThemeColors,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeModelImpl implements _ThemeModel {
  const _$ThemeModelImpl(
      {this.id,
      required this.name,
      required this.isDark,
      required this.colors});

  factory _$ThemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final bool isDark;
  @override
  final ThemeColors colors;

  @override
  String toString() {
    return 'ThemeModel(id: $id, name: $name, isDark: $isDark, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.colors, colors) || other.colors == colors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isDark, colors);

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModelImplCopyWith<_$ThemeModelImpl> get copyWith =>
      __$$ThemeModelImplCopyWithImpl<_$ThemeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeModelImplToJson(
      this,
    );
  }
}

abstract class _ThemeModel implements ThemeModel {
  const factory _ThemeModel(
      {final int? id,
      required final String name,
      required final bool isDark,
      required final ThemeColors colors}) = _$ThemeModelImpl;

  factory _ThemeModel.fromJson(Map<String, dynamic> json) =
      _$ThemeModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  bool get isDark;
  @override
  ThemeColors get colors;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeModelImplCopyWith<_$ThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeColors _$ThemeColorsFromJson(Map<String, dynamic> json) {
  return _ThemeColors.fromJson(json);
}

/// @nodoc
mixin _$ThemeColors {
  String get info => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get divider => throw _privateConstructorUsedError;
  String get primary => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  String get surface => throw _privateConstructorUsedError;
  String get warning => throw _privateConstructorUsedError;
  String get secondary => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  List<String> get partColors => throw _privateConstructorUsedError;
  String get textPrimary => throw _privateConstructorUsedError;
  String get textSecondary => throw _privateConstructorUsedError;
  String get buttonForeground => throw _privateConstructorUsedError;

  /// Serializes this ThemeColors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThemeColors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeColorsCopyWith<ThemeColors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeColorsCopyWith<$Res> {
  factory $ThemeColorsCopyWith(
          ThemeColors value, $Res Function(ThemeColors) then) =
      _$ThemeColorsCopyWithImpl<$Res, ThemeColors>;
  @useResult
  $Res call(
      {String info,
      String error,
      String divider,
      String primary,
      String success,
      String surface,
      String warning,
      String secondary,
      String background,
      List<String> partColors,
      String textPrimary,
      String textSecondary,
      String buttonForeground});
}

/// @nodoc
class _$ThemeColorsCopyWithImpl<$Res, $Val extends ThemeColors>
    implements $ThemeColorsCopyWith<$Res> {
  _$ThemeColorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeColors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? error = null,
    Object? divider = null,
    Object? primary = null,
    Object? success = null,
    Object? surface = null,
    Object? warning = null,
    Object? secondary = null,
    Object? background = null,
    Object? partColors = null,
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? buttonForeground = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as String,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      surface: null == surface
          ? _value.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      warning: null == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      partColors: null == partColors
          ? _value.partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      textPrimary: null == textPrimary
          ? _value.textPrimary
          : textPrimary // ignore: cast_nullable_to_non_nullable
              as String,
      textSecondary: null == textSecondary
          ? _value.textSecondary
          : textSecondary // ignore: cast_nullable_to_non_nullable
              as String,
      buttonForeground: null == buttonForeground
          ? _value.buttonForeground
          : buttonForeground // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeColorsImplCopyWith<$Res>
    implements $ThemeColorsCopyWith<$Res> {
  factory _$$ThemeColorsImplCopyWith(
          _$ThemeColorsImpl value, $Res Function(_$ThemeColorsImpl) then) =
      __$$ThemeColorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String info,
      String error,
      String divider,
      String primary,
      String success,
      String surface,
      String warning,
      String secondary,
      String background,
      List<String> partColors,
      String textPrimary,
      String textSecondary,
      String buttonForeground});
}

/// @nodoc
class __$$ThemeColorsImplCopyWithImpl<$Res>
    extends _$ThemeColorsCopyWithImpl<$Res, _$ThemeColorsImpl>
    implements _$$ThemeColorsImplCopyWith<$Res> {
  __$$ThemeColorsImplCopyWithImpl(
      _$ThemeColorsImpl _value, $Res Function(_$ThemeColorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeColors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? error = null,
    Object? divider = null,
    Object? primary = null,
    Object? success = null,
    Object? surface = null,
    Object? warning = null,
    Object? secondary = null,
    Object? background = null,
    Object? partColors = null,
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? buttonForeground = null,
  }) {
    return _then(_$ThemeColorsImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as String,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      surface: null == surface
          ? _value.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      warning: null == warning
          ? _value.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      partColors: null == partColors
          ? _value._partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      textPrimary: null == textPrimary
          ? _value.textPrimary
          : textPrimary // ignore: cast_nullable_to_non_nullable
              as String,
      textSecondary: null == textSecondary
          ? _value.textSecondary
          : textSecondary // ignore: cast_nullable_to_non_nullable
              as String,
      buttonForeground: null == buttonForeground
          ? _value.buttonForeground
          : buttonForeground // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeColorsImpl implements _ThemeColors {
  const _$ThemeColorsImpl(
      {required this.info,
      required this.error,
      required this.divider,
      required this.primary,
      required this.success,
      required this.surface,
      required this.warning,
      required this.secondary,
      required this.background,
      required final List<String> partColors,
      required this.textPrimary,
      required this.textSecondary,
      required this.buttonForeground})
      : _partColors = partColors;

  factory _$ThemeColorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeColorsImplFromJson(json);

  @override
  final String info;
  @override
  final String error;
  @override
  final String divider;
  @override
  final String primary;
  @override
  final String success;
  @override
  final String surface;
  @override
  final String warning;
  @override
  final String secondary;
  @override
  final String background;
  final List<String> _partColors;
  @override
  List<String> get partColors {
    if (_partColors is EqualUnmodifiableListView) return _partColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partColors);
  }

  @override
  final String textPrimary;
  @override
  final String textSecondary;
  @override
  final String buttonForeground;

  @override
  String toString() {
    return 'ThemeColors(info: $info, error: $error, divider: $divider, primary: $primary, success: $success, surface: $surface, warning: $warning, secondary: $secondary, background: $background, partColors: $partColors, textPrimary: $textPrimary, textSecondary: $textSecondary, buttonForeground: $buttonForeground)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeColorsImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.divider, divider) || other.divider == divider) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.surface, surface) || other.surface == surface) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background) &&
            const DeepCollectionEquality()
                .equals(other._partColors, _partColors) &&
            (identical(other.textPrimary, textPrimary) ||
                other.textPrimary == textPrimary) &&
            (identical(other.textSecondary, textSecondary) ||
                other.textSecondary == textSecondary) &&
            (identical(other.buttonForeground, buttonForeground) ||
                other.buttonForeground == buttonForeground));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      error,
      divider,
      primary,
      success,
      surface,
      warning,
      secondary,
      background,
      const DeepCollectionEquality().hash(_partColors),
      textPrimary,
      textSecondary,
      buttonForeground);

  /// Create a copy of ThemeColors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeColorsImplCopyWith<_$ThemeColorsImpl> get copyWith =>
      __$$ThemeColorsImplCopyWithImpl<_$ThemeColorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeColorsImplToJson(
      this,
    );
  }
}

abstract class _ThemeColors implements ThemeColors {
  const factory _ThemeColors(
      {required final String info,
      required final String error,
      required final String divider,
      required final String primary,
      required final String success,
      required final String surface,
      required final String warning,
      required final String secondary,
      required final String background,
      required final List<String> partColors,
      required final String textPrimary,
      required final String textSecondary,
      required final String buttonForeground}) = _$ThemeColorsImpl;

  factory _ThemeColors.fromJson(Map<String, dynamic> json) =
      _$ThemeColorsImpl.fromJson;

  @override
  String get info;
  @override
  String get error;
  @override
  String get divider;
  @override
  String get primary;
  @override
  String get success;
  @override
  String get surface;
  @override
  String get warning;
  @override
  String get secondary;
  @override
  String get background;
  @override
  List<String> get partColors;
  @override
  String get textPrimary;
  @override
  String get textSecondary;
  @override
  String get buttonForeground;

  /// Create a copy of ThemeColors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeColorsImplCopyWith<_$ThemeColorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
