// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeModel {
  int? get id;
  String get primary;
  String get secondary;
  String get background;
  String get buttonForeground;
  String get surface;
  String get error;
  String get success;
  String get warning;
  String get info;
  String get divider;
  String get textPrimary;
  String get textSecondary;
  List<String> get partColors;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      _$ThemeModelCopyWithImpl<ThemeModel>(this as ThemeModel, _$identity);

  /// Serializes this ThemeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.buttonForeground, buttonForeground) ||
                other.buttonForeground == buttonForeground) &&
            (identical(other.surface, surface) || other.surface == surface) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.divider, divider) || other.divider == divider) &&
            (identical(other.textPrimary, textPrimary) ||
                other.textPrimary == textPrimary) &&
            (identical(other.textSecondary, textSecondary) ||
                other.textSecondary == textSecondary) &&
            const DeepCollectionEquality()
                .equals(other.partColors, partColors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      primary,
      secondary,
      background,
      buttonForeground,
      surface,
      error,
      success,
      warning,
      info,
      divider,
      textPrimary,
      textSecondary,
      const DeepCollectionEquality().hash(partColors));

  @override
  String toString() {
    return 'ThemeModel(id: $id, primary: $primary, secondary: $secondary, background: $background, buttonForeground: $buttonForeground, surface: $surface, error: $error, success: $success, warning: $warning, info: $info, divider: $divider, textPrimary: $textPrimary, textSecondary: $textSecondary, partColors: $partColors)';
  }
}

/// @nodoc
abstract mixin class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) _then) =
      _$ThemeModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String primary,
      String secondary,
      String background,
      String buttonForeground,
      String surface,
      String error,
      String success,
      String warning,
      String info,
      String divider,
      String textPrimary,
      String textSecondary,
      List<String> partColors});
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res> implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._self, this._then);

  final ThemeModel _self;
  final $Res Function(ThemeModel) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? primary = null,
    Object? secondary = null,
    Object? background = null,
    Object? buttonForeground = null,
    Object? surface = null,
    Object? error = null,
    Object? success = null,
    Object? warning = null,
    Object? info = null,
    Object? divider = null,
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? partColors = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _self.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _self.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      buttonForeground: null == buttonForeground
          ? _self.buttonForeground
          : buttonForeground // ignore: cast_nullable_to_non_nullable
              as String,
      surface: null == surface
          ? _self.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      warning: null == warning
          ? _self.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      divider: null == divider
          ? _self.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as String,
      textPrimary: null == textPrimary
          ? _self.textPrimary
          : textPrimary // ignore: cast_nullable_to_non_nullable
              as String,
      textSecondary: null == textSecondary
          ? _self.textSecondary
          : textSecondary // ignore: cast_nullable_to_non_nullable
              as String,
      partColors: null == partColors
          ? _self.partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ThemeModel].
extension ThemeModelPatterns on ThemeModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ThemeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ThemeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ThemeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int? id,
            String primary,
            String secondary,
            String background,
            String buttonForeground,
            String surface,
            String error,
            String success,
            String warning,
            String info,
            String divider,
            String textPrimary,
            String textSecondary,
            List<String> partColors)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeModel() when $default != null:
        return $default(
            _that.id,
            _that.primary,
            _that.secondary,
            _that.background,
            _that.buttonForeground,
            _that.surface,
            _that.error,
            _that.success,
            _that.warning,
            _that.info,
            _that.divider,
            _that.textPrimary,
            _that.textSecondary,
            _that.partColors);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int? id,
            String primary,
            String secondary,
            String background,
            String buttonForeground,
            String surface,
            String error,
            String success,
            String warning,
            String info,
            String divider,
            String textPrimary,
            String textSecondary,
            List<String> partColors)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeModel():
        return $default(
            _that.id,
            _that.primary,
            _that.secondary,
            _that.background,
            _that.buttonForeground,
            _that.surface,
            _that.error,
            _that.success,
            _that.warning,
            _that.info,
            _that.divider,
            _that.textPrimary,
            _that.textSecondary,
            _that.partColors);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int? id,
            String primary,
            String secondary,
            String background,
            String buttonForeground,
            String surface,
            String error,
            String success,
            String warning,
            String info,
            String divider,
            String textPrimary,
            String textSecondary,
            List<String> partColors)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ThemeModel() when $default != null:
        return $default(
            _that.id,
            _that.primary,
            _that.secondary,
            _that.background,
            _that.buttonForeground,
            _that.surface,
            _that.error,
            _that.success,
            _that.warning,
            _that.info,
            _that.divider,
            _that.textPrimary,
            _that.textSecondary,
            _that.partColors);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ThemeModel implements ThemeModel {
  const _ThemeModel(
      {this.id,
      required this.primary,
      required this.secondary,
      required this.background,
      required this.buttonForeground,
      required this.surface,
      required this.error,
      required this.success,
      required this.warning,
      required this.info,
      required this.divider,
      required this.textPrimary,
      required this.textSecondary,
      required final List<String> partColors})
      : _partColors = partColors;
  factory _ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);

  @override
  final int? id;
  @override
  final String primary;
  @override
  final String secondary;
  @override
  final String background;
  @override
  final String buttonForeground;
  @override
  final String surface;
  @override
  final String error;
  @override
  final String success;
  @override
  final String warning;
  @override
  final String info;
  @override
  final String divider;
  @override
  final String textPrimary;
  @override
  final String textSecondary;
  final List<String> _partColors;
  @override
  List<String> get partColors {
    if (_partColors is EqualUnmodifiableListView) return _partColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partColors);
  }

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThemeModelCopyWith<_ThemeModel> get copyWith =>
      __$ThemeModelCopyWithImpl<_ThemeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThemeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThemeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.buttonForeground, buttonForeground) ||
                other.buttonForeground == buttonForeground) &&
            (identical(other.surface, surface) || other.surface == surface) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.warning, warning) || other.warning == warning) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.divider, divider) || other.divider == divider) &&
            (identical(other.textPrimary, textPrimary) ||
                other.textPrimary == textPrimary) &&
            (identical(other.textSecondary, textSecondary) ||
                other.textSecondary == textSecondary) &&
            const DeepCollectionEquality()
                .equals(other._partColors, _partColors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      primary,
      secondary,
      background,
      buttonForeground,
      surface,
      error,
      success,
      warning,
      info,
      divider,
      textPrimary,
      textSecondary,
      const DeepCollectionEquality().hash(_partColors));

  @override
  String toString() {
    return 'ThemeModel(id: $id, primary: $primary, secondary: $secondary, background: $background, buttonForeground: $buttonForeground, surface: $surface, error: $error, success: $success, warning: $warning, info: $info, divider: $divider, textPrimary: $textPrimary, textSecondary: $textSecondary, partColors: $partColors)';
  }
}

/// @nodoc
abstract mixin class _$ThemeModelCopyWith<$Res>
    implements $ThemeModelCopyWith<$Res> {
  factory _$ThemeModelCopyWith(
          _ThemeModel value, $Res Function(_ThemeModel) _then) =
      __$ThemeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String primary,
      String secondary,
      String background,
      String buttonForeground,
      String surface,
      String error,
      String success,
      String warning,
      String info,
      String divider,
      String textPrimary,
      String textSecondary,
      List<String> partColors});
}

/// @nodoc
class __$ThemeModelCopyWithImpl<$Res> implements _$ThemeModelCopyWith<$Res> {
  __$ThemeModelCopyWithImpl(this._self, this._then);

  final _ThemeModel _self;
  final $Res Function(_ThemeModel) _then;

  /// Create a copy of ThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? primary = null,
    Object? secondary = null,
    Object? background = null,
    Object? buttonForeground = null,
    Object? surface = null,
    Object? error = null,
    Object? success = null,
    Object? warning = null,
    Object? info = null,
    Object? divider = null,
    Object? textPrimary = null,
    Object? textSecondary = null,
    Object? partColors = null,
  }) {
    return _then(_ThemeModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      secondary: null == secondary
          ? _self.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _self.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      buttonForeground: null == buttonForeground
          ? _self.buttonForeground
          : buttonForeground // ignore: cast_nullable_to_non_nullable
              as String,
      surface: null == surface
          ? _self.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      warning: null == warning
          ? _self.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      divider: null == divider
          ? _self.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as String,
      textPrimary: null == textPrimary
          ? _self.textPrimary
          : textPrimary // ignore: cast_nullable_to_non_nullable
              as String,
      textSecondary: null == textSecondary
          ? _self.textSecondary
          : textSecondary // ignore: cast_nullable_to_non_nullable
              as String,
      partColors: null == partColors
          ? _self._partColors
          : partColors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
