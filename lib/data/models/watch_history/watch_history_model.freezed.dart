// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchHistoryModel {
  int? get id; // edit unnecessary
  int get userId;
  int get videoId;
  int get lastPositionSeconds; // edit nullable
  DateTime get updatedAt;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WatchHistoryModelCopyWith<WatchHistoryModel> get copyWith =>
      _$WatchHistoryModelCopyWithImpl<WatchHistoryModel>(
          this as WatchHistoryModel, _$identity);

  /// Serializes this WatchHistoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchHistoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, videoId, lastPositionSeconds, updatedAt);

  @override
  String toString() {
    return 'WatchHistoryModel(id: $id, userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $WatchHistoryModelCopyWith<$Res> {
  factory $WatchHistoryModelCopyWith(
          WatchHistoryModel value, $Res Function(WatchHistoryModel) _then) =
      _$WatchHistoryModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      int userId,
      int videoId,
      int lastPositionSeconds,
      DateTime updatedAt});
}

/// @nodoc
class _$WatchHistoryModelCopyWithImpl<$Res>
    implements $WatchHistoryModelCopyWith<$Res> {
  _$WatchHistoryModelCopyWithImpl(this._self, this._then);

  final WatchHistoryModel _self;
  final $Res Function(WatchHistoryModel) _then;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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

/// Adds pattern-matching-related methods to [WatchHistoryModel].
extension WatchHistoryModelPatterns on WatchHistoryModel {
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
    TResult Function(_WatchHistoryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel() when $default != null:
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
    TResult Function(_WatchHistoryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel():
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
    TResult? Function(_WatchHistoryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel() when $default != null:
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
    TResult Function(int? id, int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel() when $default != null:
        return $default(_that.id, _that.userId, _that.videoId,
            _that.lastPositionSeconds, _that.updatedAt);
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
    TResult Function(int? id, int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel():
        return $default(_that.id, _that.userId, _that.videoId,
            _that.lastPositionSeconds, _that.updatedAt);
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
    TResult? Function(int? id, int userId, int videoId, int lastPositionSeconds,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WatchHistoryModel() when $default != null:
        return $default(_that.id, _that.userId, _that.videoId,
            _that.lastPositionSeconds, _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WatchHistoryModel implements WatchHistoryModel {
  const _WatchHistoryModel(
      {required this.id,
      required this.userId,
      required this.videoId,
      required this.lastPositionSeconds,
      required this.updatedAt});
  factory _WatchHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$WatchHistoryModelFromJson(json);

  @override
  final int? id;
// edit unnecessary
  @override
  final int userId;
  @override
  final int videoId;
  @override
  final int lastPositionSeconds;
// edit nullable
  @override
  final DateTime updatedAt;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WatchHistoryModelCopyWith<_WatchHistoryModel> get copyWith =>
      __$WatchHistoryModelCopyWithImpl<_WatchHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WatchHistoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchHistoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, videoId, lastPositionSeconds, updatedAt);

  @override
  String toString() {
    return 'WatchHistoryModel(id: $id, userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$WatchHistoryModelCopyWith<$Res>
    implements $WatchHistoryModelCopyWith<$Res> {
  factory _$WatchHistoryModelCopyWith(
          _WatchHistoryModel value, $Res Function(_WatchHistoryModel) _then) =
      __$WatchHistoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      int videoId,
      int lastPositionSeconds,
      DateTime updatedAt});
}

/// @nodoc
class __$WatchHistoryModelCopyWithImpl<$Res>
    implements _$WatchHistoryModelCopyWith<$Res> {
  __$WatchHistoryModelCopyWithImpl(this._self, this._then);

  final _WatchHistoryModel _self;
  final $Res Function(_WatchHistoryModel) _then;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = null,
    Object? updatedAt = null,
  }) {
    return _then(_WatchHistoryModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
