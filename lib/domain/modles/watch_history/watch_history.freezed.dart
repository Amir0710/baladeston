// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchHistory {
  int get userId;
  set userId(int value);
  int get videoId;
  set videoId(int value);
  int get lastPositionSeconds;
  set lastPositionSeconds(int value);
  DateTime get updatedAt;
  set updatedAt(DateTime value);

  /// Create a copy of WatchHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WatchHistoryCopyWith<WatchHistory> get copyWith =>
      _$WatchHistoryCopyWithImpl<WatchHistory>(
          this as WatchHistory, _$identity);

  /// Serializes this WatchHistory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'WatchHistory(userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WatchHistoryCopyWith<$Res> {
  factory $WatchHistoryCopyWith(
          WatchHistory value, $Res Function(WatchHistory) _then) =
      _$WatchHistoryCopyWithImpl;
  @useResult
  $Res call(
      {int userId, int videoId, int lastPositionSeconds, DateTime updatedAt});
}

/// @nodoc
class _$WatchHistoryCopyWithImpl<$Res> implements $WatchHistoryCopyWith<$Res> {
  _$WatchHistoryCopyWithImpl(this._self, this._then);

  final WatchHistory _self;
  final $Res Function(WatchHistory) _then;

  /// Create a copy of WatchHistory
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

/// Adds pattern-matching-related methods to [WatchHistory].
extension WatchHistoryPatterns on WatchHistory {
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
    TResult Function(_WatchHistory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WatchHistory() when $default != null:
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
    TResult Function(_WatchHistory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistory():
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
    TResult? Function(_WatchHistory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistory() when $default != null:
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
      case _WatchHistory() when $default != null:
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
      case _WatchHistory():
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
      case _WatchHistory() when $default != null:
        return $default(_that.userId, _that.videoId, _that.lastPositionSeconds,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _WatchHistory implements WatchHistory {
  _WatchHistory(
      {required this.userId,
      required this.videoId,
      required this.lastPositionSeconds,
      required this.updatedAt});
  factory _WatchHistory.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoryFromJson(json);

  @override
  int userId;
  @override
  int videoId;
  @override
  int lastPositionSeconds;
  @override
  DateTime updatedAt;

  /// Create a copy of WatchHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WatchHistoryCopyWith<_WatchHistory> get copyWith =>
      __$WatchHistoryCopyWithImpl<_WatchHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WatchHistoryToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'WatchHistory(userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WatchHistoryCopyWith<$Res>
    implements $WatchHistoryCopyWith<$Res> {
  factory _$WatchHistoryCopyWith(
          _WatchHistory value, $Res Function(_WatchHistory) _then) =
      __$WatchHistoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId, int videoId, int lastPositionSeconds, DateTime updatedAt});
}

/// @nodoc
class __$WatchHistoryCopyWithImpl<$Res>
    implements _$WatchHistoryCopyWith<$Res> {
  __$WatchHistoryCopyWithImpl(this._self, this._then);

  final _WatchHistory _self;
  final $Res Function(_WatchHistory) _then;

  /// Create a copy of WatchHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_WatchHistory(
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
