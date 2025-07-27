// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchHistoryEntity {
  int get userId;
  int get videoId;
  int get lastPositionSeconds;
  DateTime get updatedAt;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WatchHistoryEntityCopyWith<WatchHistoryEntity> get copyWith =>
      _$WatchHistoryEntityCopyWithImpl<WatchHistoryEntity>(
          this as WatchHistoryEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchHistoryEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, videoId, lastPositionSeconds, updatedAt);

  @override
  String toString() {
    return 'WatchHistoryEntity(userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WatchHistoryEntityCopyWith<$Res> {
  factory $WatchHistoryEntityCopyWith(
          WatchHistoryEntity value, $Res Function(WatchHistoryEntity) _then) =
      _$WatchHistoryEntityCopyWithImpl;
  @useResult
  $Res call(
      {int userId, int videoId, int lastPositionSeconds, DateTime updatedAt});
}

/// @nodoc
class _$WatchHistoryEntityCopyWithImpl<$Res>
    implements $WatchHistoryEntityCopyWith<$Res> {
  _$WatchHistoryEntityCopyWithImpl(this._self, this._then);

  final WatchHistoryEntity _self;
  final $Res Function(WatchHistoryEntity) _then;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: null == lastPositionSeconds
          ? _self.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [WatchHistoryEntity].
extension WatchHistoryEntityPatterns on WatchHistoryEntity {
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
    TResult Function(_WatchHistoryEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity() when $default != null:
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
    TResult Function(_WatchHistoryEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity():
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
    TResult? Function(_WatchHistoryEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity() when $default != null:
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
    TResult Function(int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity() when $default != null:
        return $default(_that.userId, _that.videoId, _that.lastPositionSeconds,
            _that.updatedAt);
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
    TResult Function(int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity():
        return $default(_that.userId, _that.videoId, _that.lastPositionSeconds,
            _that.updatedAt);
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
    TResult? Function(int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryEntity() when $default != null:
        return $default(_that.userId, _that.videoId, _that.lastPositionSeconds,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WatchHistoryEntity implements WatchHistoryEntity {
  const _WatchHistoryEntity(
      {required this.userId,
      required this.videoId,
      required this.lastPositionSeconds,
      required this.updatedAt});

  @override
  final int userId;
  @override
  final int videoId;
  @override
  final int lastPositionSeconds;
  @override
  final DateTime updatedAt;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WatchHistoryEntityCopyWith<_WatchHistoryEntity> get copyWith =>
      __$WatchHistoryEntityCopyWithImpl<_WatchHistoryEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchHistoryEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, videoId, lastPositionSeconds, updatedAt);

  @override
  String toString() {
    return 'WatchHistoryEntity(userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WatchHistoryEntityCopyWith<$Res>
    implements $WatchHistoryEntityCopyWith<$Res> {
  factory _$WatchHistoryEntityCopyWith(
          _WatchHistoryEntity value, $Res Function(_WatchHistoryEntity) _then) =
      __$WatchHistoryEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId, int videoId, int lastPositionSeconds, DateTime updatedAt});
}

/// @nodoc
class __$WatchHistoryEntityCopyWithImpl<$Res>
    implements _$WatchHistoryEntityCopyWith<$Res> {
  __$WatchHistoryEntityCopyWithImpl(this._self, this._then);

  final _WatchHistoryEntity _self;
  final $Res Function(_WatchHistoryEntity) _then;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_WatchHistoryEntity(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: null == lastPositionSeconds
          ? _self.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
