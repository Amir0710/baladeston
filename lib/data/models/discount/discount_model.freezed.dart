// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiscountModel {
  int? get userId;
  int? get id;
  int? get category;
  int get percent;
  String get status; // edit can be nullable
  DateTime get expiresAt;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      _$DiscountModelCopyWithImpl<DiscountModel>(
          this as DiscountModel, _$identity);

  /// Serializes this DiscountModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiscountModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, category, percent, status, expiresAt);

  @override
  String toString() {
    return 'DiscountModel(userId: $userId, id: $id, category: $category, percent: $percent, status: $status, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) _then) =
      _$DiscountModelCopyWithImpl;
  @useResult
  $Res call(
      {int? userId,
      int? id,
      int? category,
      int percent,
      String status,
      DateTime expiresAt});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._self, this._then);

  final DiscountModel _self;
  final $Res Function(DiscountModel) _then;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? percent = null,
    Object? status = null,
    Object? expiresAt = null,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: null == percent
          ? _self.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiscountModel].
extension DiscountModelPatterns on DiscountModel {
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
    TResult Function(_DiscountModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountModel() when $default != null:
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
    TResult Function(_DiscountModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountModel():
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
    TResult? Function(_DiscountModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountModel() when $default != null:
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
    TResult Function(int? userId, int? id, int? category, int percent,
            String status, DateTime expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountModel() when $default != null:
        return $default(_that.userId, _that.id, _that.category, _that.percent,
            _that.status, _that.expiresAt);
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
    TResult Function(int? userId, int? id, int? category, int percent,
            String status, DateTime expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountModel():
        return $default(_that.userId, _that.id, _that.category, _that.percent,
            _that.status, _that.expiresAt);
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
    TResult? Function(int? userId, int? id, int? category, int percent,
            String status, DateTime expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountModel() when $default != null:
        return $default(_that.userId, _that.id, _that.category, _that.percent,
            _that.status, _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiscountModel implements DiscountModel {
  const _DiscountModel(
      {required this.userId,
      required this.id,
      required this.category,
      required this.percent,
      required this.status,
      required this.expiresAt});
  factory _DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);

  @override
  final int? userId;
  @override
  final int? id;
  @override
  final int? category;
  @override
  final int percent;
  @override
  final String status;
// edit can be nullable
  @override
  final DateTime expiresAt;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiscountModelCopyWith<_DiscountModel> get copyWith =>
      __$DiscountModelCopyWithImpl<_DiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiscountModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, category, percent, status, expiresAt);

  @override
  String toString() {
    return 'DiscountModel(userId: $userId, id: $id, category: $category, percent: $percent, status: $status, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$DiscountModelCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$DiscountModelCopyWith(
          _DiscountModel value, $Res Function(_DiscountModel) _then) =
      __$DiscountModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? id,
      int? category,
      int percent,
      String status,
      DateTime expiresAt});
}

/// @nodoc
class __$DiscountModelCopyWithImpl<$Res>
    implements _$DiscountModelCopyWith<$Res> {
  __$DiscountModelCopyWithImpl(this._self, this._then);

  final _DiscountModel _self;
  final $Res Function(_DiscountModel) _then;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? category = freezed,
    Object? percent = null,
    Object? status = null,
    Object? expiresAt = null,
  }) {
    return _then(_DiscountModel(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: null == percent
          ? _self.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
