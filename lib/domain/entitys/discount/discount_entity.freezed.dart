// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiscountEntity {
  int? get userId;
  int get id;
  int get category;
  int get percent;
  String get status;
  DateTime get expiresAt;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiscountEntityCopyWith<DiscountEntity> get copyWith =>
      _$DiscountEntityCopyWithImpl<DiscountEntity>(
          this as DiscountEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiscountEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, category, percent, status, expiresAt);

  @override
  String toString() {
    return 'DiscountEntity(userId: $userId, id: $id, category: $category, percent: $percent, status: $status, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $DiscountEntityCopyWith<$Res> {
  factory $DiscountEntityCopyWith(
          DiscountEntity value, $Res Function(DiscountEntity) _then) =
      _$DiscountEntityCopyWithImpl;
  @useResult
  $Res call(
      {int? userId,
      int id,
      int category,
      int percent,
      String status,
      DateTime expiresAt});
}

/// @nodoc
class _$DiscountEntityCopyWithImpl<$Res>
    implements $DiscountEntityCopyWith<$Res> {
  _$DiscountEntityCopyWithImpl(this._self, this._then);

  final DiscountEntity _self;
  final $Res Function(DiscountEntity) _then;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? id = null,
    Object? category = null,
    Object? percent = null,
    Object? status = null,
    Object? expiresAt = null,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
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

/// Adds pattern-matching-related methods to [DiscountEntity].
extension DiscountEntityPatterns on DiscountEntity {
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
    TResult Function(_DiscountEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity() when $default != null:
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
    TResult Function(_DiscountEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity():
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
    TResult? Function(_DiscountEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity() when $default != null:
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
    TResult Function(int? userId, int id, int category, int percent,
            String status, DateTime expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity() when $default != null:
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
    TResult Function(int? userId, int id, int category, int percent,
            String status, DateTime expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity():
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
    TResult? Function(int? userId, int id, int category, int percent,
            String status, DateTime expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountEntity() when $default != null:
        return $default(_that.userId, _that.id, _that.category, _that.percent,
            _that.status, _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DiscountEntity implements DiscountEntity {
  const _DiscountEntity(
      {required this.userId,
      required this.id,
      required this.category,
      required this.percent,
      required this.status,
      required this.expiresAt});

  @override
  final int? userId;
  @override
  final int id;
  @override
  final int category;
  @override
  final int percent;
  @override
  final String status;
  @override
  final DateTime expiresAt;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiscountEntityCopyWith<_DiscountEntity> get copyWith =>
      __$DiscountEntityCopyWithImpl<_DiscountEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, id, category, percent, status, expiresAt);

  @override
  String toString() {
    return 'DiscountEntity(userId: $userId, id: $id, category: $category, percent: $percent, status: $status, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$DiscountEntityCopyWith<$Res>
    implements $DiscountEntityCopyWith<$Res> {
  factory _$DiscountEntityCopyWith(
          _DiscountEntity value, $Res Function(_DiscountEntity) _then) =
      __$DiscountEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? userId,
      int id,
      int category,
      int percent,
      String status,
      DateTime expiresAt});
}

/// @nodoc
class __$DiscountEntityCopyWithImpl<$Res>
    implements _$DiscountEntityCopyWith<$Res> {
  __$DiscountEntityCopyWithImpl(this._self, this._then);

  final _DiscountEntity _self;
  final $Res Function(_DiscountEntity) _then;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? id = null,
    Object? category = null,
    Object? percent = null,
    Object? status = null,
    Object? expiresAt = null,
  }) {
    return _then(_DiscountEntity(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
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
