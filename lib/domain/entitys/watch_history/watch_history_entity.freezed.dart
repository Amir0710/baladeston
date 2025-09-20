// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WatchHistoryEntity {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int get lastPositionSeconds => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchHistoryEntityCopyWith<WatchHistoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchHistoryEntityCopyWith<$Res> {
  factory $WatchHistoryEntityCopyWith(
          WatchHistoryEntity value, $Res Function(WatchHistoryEntity) then) =
      _$WatchHistoryEntityCopyWithImpl<$Res, WatchHistoryEntity>;
  @useResult
  $Res call(
      {int? id,
      int userId,
      int videoId,
      int lastPositionSeconds,
      DateTime updatedAt});
}

/// @nodoc
class _$WatchHistoryEntityCopyWithImpl<$Res, $Val extends WatchHistoryEntity>
    implements $WatchHistoryEntityCopyWith<$Res> {
  _$WatchHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchHistoryEntity
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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: null == lastPositionSeconds
          ? _value.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchHistoryEntityImplCopyWith<$Res>
    implements $WatchHistoryEntityCopyWith<$Res> {
  factory _$$WatchHistoryEntityImplCopyWith(_$WatchHistoryEntityImpl value,
          $Res Function(_$WatchHistoryEntityImpl) then) =
      __$$WatchHistoryEntityImplCopyWithImpl<$Res>;
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
class __$$WatchHistoryEntityImplCopyWithImpl<$Res>
    extends _$WatchHistoryEntityCopyWithImpl<$Res, _$WatchHistoryEntityImpl>
    implements _$$WatchHistoryEntityImplCopyWith<$Res> {
  __$$WatchHistoryEntityImplCopyWithImpl(_$WatchHistoryEntityImpl _value,
      $Res Function(_$WatchHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchHistoryEntity
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
    return _then(_$WatchHistoryEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: null == lastPositionSeconds
          ? _value.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$WatchHistoryEntityImpl implements _WatchHistoryEntity {
  const _$WatchHistoryEntityImpl(
      {required this.id,
      required this.userId,
      required this.videoId,
      required this.lastPositionSeconds,
      required this.updatedAt});

  @override
  final int? id;
  @override
  final int userId;
  @override
  final int videoId;
  @override
  final int lastPositionSeconds;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'WatchHistoryEntity(id: $id, userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, videoId, lastPositionSeconds, updatedAt);

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchHistoryEntityImplCopyWith<_$WatchHistoryEntityImpl> get copyWith =>
      __$$WatchHistoryEntityImplCopyWithImpl<_$WatchHistoryEntityImpl>(
          this, _$identity);
}

abstract class _WatchHistoryEntity implements WatchHistoryEntity {
  const factory _WatchHistoryEntity(
      {required final int? id,
      required final int userId,
      required final int videoId,
      required final int lastPositionSeconds,
      required final DateTime updatedAt}) = _$WatchHistoryEntityImpl;

  @override
  int? get id;
  @override
  int get userId;
  @override
  int get videoId;
  @override
  int get lastPositionSeconds;
  @override
  DateTime get updatedAt;

  /// Create a copy of WatchHistoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchHistoryEntityImplCopyWith<_$WatchHistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
