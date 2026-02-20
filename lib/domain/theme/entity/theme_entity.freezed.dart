// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEntity {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;
  ThemeColorsEntity get colors => throw _privateConstructorUsedError;

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeEntityCopyWith<ThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEntityCopyWith<$Res> {
  factory $ThemeEntityCopyWith(
          ThemeEntity value, $Res Function(ThemeEntity) then) =
      _$ThemeEntityCopyWithImpl<$Res, ThemeEntity>;
  @useResult
  $Res call({int? id, String name, bool isDark, ThemeColorsEntity colors});

  $ThemeColorsEntityCopyWith<$Res> get colors;
}

/// @nodoc
class _$ThemeEntityCopyWithImpl<$Res, $Val extends ThemeEntity>
    implements $ThemeEntityCopyWith<$Res> {
  _$ThemeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeEntity
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
              as ThemeColorsEntity,
    ) as $Val);
  }

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThemeColorsEntityCopyWith<$Res> get colors {
    return $ThemeColorsEntityCopyWith<$Res>(_value.colors, (value) {
      return _then(_value.copyWith(colors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThemeEntityImplCopyWith<$Res>
    implements $ThemeEntityCopyWith<$Res> {
  factory _$$ThemeEntityImplCopyWith(
          _$ThemeEntityImpl value, $Res Function(_$ThemeEntityImpl) then) =
      __$$ThemeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, bool isDark, ThemeColorsEntity colors});

  @override
  $ThemeColorsEntityCopyWith<$Res> get colors;
}

/// @nodoc
class __$$ThemeEntityImplCopyWithImpl<$Res>
    extends _$ThemeEntityCopyWithImpl<$Res, _$ThemeEntityImpl>
    implements _$$ThemeEntityImplCopyWith<$Res> {
  __$$ThemeEntityImplCopyWithImpl(
      _$ThemeEntityImpl _value, $Res Function(_$ThemeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? isDark = null,
    Object? colors = null,
  }) {
    return _then(_$ThemeEntityImpl(
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
              as ThemeColorsEntity,
    ));
  }
}

/// @nodoc

class _$ThemeEntityImpl implements _ThemeEntity {
  const _$ThemeEntityImpl(
      {this.id,
      required this.name,
      required this.isDark,
      required this.colors});

  @override
  final int? id;
  @override
  final String name;
  @override
  final bool isDark;
  @override
  final ThemeColorsEntity colors;

  @override
  String toString() {
    return 'ThemeEntity(id: $id, name: $name, isDark: $isDark, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.colors, colors) || other.colors == colors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isDark, colors);

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeEntityImplCopyWith<_$ThemeEntityImpl> get copyWith =>
      __$$ThemeEntityImplCopyWithImpl<_$ThemeEntityImpl>(this, _$identity);
}

abstract class _ThemeEntity implements ThemeEntity {
  const factory _ThemeEntity(
      {final int? id,
      required final String name,
      required final bool isDark,
      required final ThemeColorsEntity colors}) = _$ThemeEntityImpl;

  @override
  int? get id;
  @override
  String get name;
  @override
  bool get isDark;
  @override
  ThemeColorsEntity get colors;

  /// Create a copy of ThemeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeEntityImplCopyWith<_$ThemeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeColorsEntity {
  String get info => throw _privateConstructorUsedError; // small text color
  String get error => throw _privateConstructorUsedError; // error text color
  String get divider => throw _privateConstructorUsedError;
  String get primary => throw _privateConstructorUsedError; // app main color
  String get success => throw _privateConstructorUsedError;
  String get surface =>
      throw _privateConstructorUsedError; // widget on background
  String get warning => throw _privateConstructorUsedError;
  String get secondary =>
      throw _privateConstructorUsedError; // app secondary color (pale)
  String get background => throw _privateConstructorUsedError;
  String get textPrimary =>
      throw _privateConstructorUsedError; // main text color
  String get textSecondary =>
      throw _privateConstructorUsedError; // opposite text color
  String get buttonForeground => throw _privateConstructorUsedError;
  List<String> get partColors => throw _privateConstructorUsedError;

  /// Create a copy of ThemeColorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeColorsEntityCopyWith<ThemeColorsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeColorsEntityCopyWith<$Res> {
  factory $ThemeColorsEntityCopyWith(
          ThemeColorsEntity value, $Res Function(ThemeColorsEntity) then) =
      _$ThemeColorsEntityCopyWithImpl<$Res, ThemeColorsEntity>;
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
      String textPrimary,
      String textSecondary,
      String buttonForeground,
      List<String> partColors});
}

/// @nodoc
class _$ThemeColorsEntityCopyWithImpl<$Res, $Val extends ThemeColorsEntity>
    implements $ThemeColorsEntityCopyWith<$Res> {
  _$ThemeColorsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeColorsEntity
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
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? buttonForeground = null,
    Object? partColors = null,
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
      partColors: null == partColors
          ? _value.partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeColorsEntityImplCopyWith<$Res>
    implements $ThemeColorsEntityCopyWith<$Res> {
  factory _$$ThemeColorsEntityImplCopyWith(_$ThemeColorsEntityImpl value,
          $Res Function(_$ThemeColorsEntityImpl) then) =
      __$$ThemeColorsEntityImplCopyWithImpl<$Res>;
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
      String textPrimary,
      String textSecondary,
      String buttonForeground,
      List<String> partColors});
}

/// @nodoc
class __$$ThemeColorsEntityImplCopyWithImpl<$Res>
    extends _$ThemeColorsEntityCopyWithImpl<$Res, _$ThemeColorsEntityImpl>
    implements _$$ThemeColorsEntityImplCopyWith<$Res> {
  __$$ThemeColorsEntityImplCopyWithImpl(_$ThemeColorsEntityImpl _value,
      $Res Function(_$ThemeColorsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThemeColorsEntity
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
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? buttonForeground = null,
    Object? partColors = null,
  }) {
    return _then(_$ThemeColorsEntityImpl(
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
      partColors: null == partColors
          ? _value._partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ThemeColorsEntityImpl implements _ThemeColorsEntity {
  const _$ThemeColorsEntityImpl(
      {required this.info,
      required this.error,
      required this.divider,
      required this.primary,
      required this.success,
      required this.surface,
      required this.warning,
      required this.secondary,
      required this.background,
      required this.textPrimary,
      required this.textSecondary,
      required this.buttonForeground,
      required final List<String> partColors})
      : _partColors = partColors;

  @override
  final String info;
// small text color
  @override
  final String error;
// error text color
  @override
  final String divider;
  @override
  final String primary;
// app main color
  @override
  final String success;
  @override
  final String surface;
// widget on background
  @override
  final String warning;
  @override
  final String secondary;
// app secondary color (pale)
  @override
  final String background;
  @override
  final String textPrimary;
// main text color
  @override
  final String textSecondary;
// opposite text color
  @override
  final String buttonForeground;
  final List<String> _partColors;
  @override
  List<String> get partColors {
    if (_partColors is EqualUnmodifiableListView) return _partColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partColors);
  }

  @override
  String toString() {
    return 'ThemeColorsEntity(info: $info, error: $error, divider: $divider, primary: $primary, success: $success, surface: $surface, warning: $warning, secondary: $secondary, background: $background, textPrimary: $textPrimary, textSecondary: $textSecondary, buttonForeground: $buttonForeground, partColors: $partColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeColorsEntityImpl &&
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
            (identical(other.textPrimary, textPrimary) ||
                other.textPrimary == textPrimary) &&
            (identical(other.textSecondary, textSecondary) ||
                other.textSecondary == textSecondary) &&
            (identical(other.buttonForeground, buttonForeground) ||
                other.buttonForeground == buttonForeground) &&
            const DeepCollectionEquality()
                .equals(other._partColors, _partColors));
  }

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
      textPrimary,
      textSecondary,
      buttonForeground,
      const DeepCollectionEquality().hash(_partColors));

  /// Create a copy of ThemeColorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeColorsEntityImplCopyWith<_$ThemeColorsEntityImpl> get copyWith =>
      __$$ThemeColorsEntityImplCopyWithImpl<_$ThemeColorsEntityImpl>(
          this, _$identity);
}

abstract class _ThemeColorsEntity implements ThemeColorsEntity {
  const factory _ThemeColorsEntity(
      {required final String info,
      required final String error,
      required final String divider,
      required final String primary,
      required final String success,
      required final String surface,
      required final String warning,
      required final String secondary,
      required final String background,
      required final String textPrimary,
      required final String textSecondary,
      required final String buttonForeground,
      required final List<String> partColors}) = _$ThemeColorsEntityImpl;

  @override
  String get info; // small text color
  @override
  String get error; // error text color
  @override
  String get divider;
  @override
  String get primary; // app main color
  @override
  String get success;
  @override
  String get surface; // widget on background
  @override
  String get warning;
  @override
  String get secondary; // app secondary color (pale)
  @override
  String get background;
  @override
  String get textPrimary; // main text color
  @override
  String get textSecondary; // opposite text color
  @override
  String get buttonForeground;
  @override
  List<String> get partColors;

  /// Create a copy of ThemeColorsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeColorsEntityImplCopyWith<_$ThemeColorsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
