// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WatchHistoryModel _$WatchHistoryModelFromJson(Map<String, dynamic> json) {
  return _WatchHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$WatchHistoryModel {
  int get userId => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int? get lastPositionSeconds => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this WatchHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WatchHistoryModelCopyWith<WatchHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchHistoryModelCopyWith<$Res> {
  factory $WatchHistoryModelCopyWith(
          WatchHistoryModel value, $Res Function(WatchHistoryModel) then) =
      _$WatchHistoryModelCopyWithImpl<$Res, WatchHistoryModel>;
  @useResult
  $Res call(
      {int userId, int videoId, int? lastPositionSeconds, DateTime? updatedAt});
}

/// @nodoc
class _$WatchHistoryModelCopyWithImpl<$Res, $Val extends WatchHistoryModel>
    implements $WatchHistoryModelCopyWith<$Res> {
  _$WatchHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: freezed == lastPositionSeconds
          ? _value.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WatchHistoryModelImplCopyWith<$Res>
    implements $WatchHistoryModelCopyWith<$Res> {
  factory _$$WatchHistoryModelImplCopyWith(_$WatchHistoryModelImpl value,
          $Res Function(_$WatchHistoryModelImpl) then) =
      __$$WatchHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId, int videoId, int? lastPositionSeconds, DateTime? updatedAt});
}

/// @nodoc
class __$$WatchHistoryModelImplCopyWithImpl<$Res>
    extends _$WatchHistoryModelCopyWithImpl<$Res, _$WatchHistoryModelImpl>
    implements _$$WatchHistoryModelImplCopyWith<$Res> {
  __$$WatchHistoryModelImplCopyWithImpl(_$WatchHistoryModelImpl _value,
      $Res Function(_$WatchHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? videoId = null,
    Object? lastPositionSeconds = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$WatchHistoryModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      lastPositionSeconds: freezed == lastPositionSeconds
          ? _value.lastPositionSeconds
          : lastPositionSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WatchHistoryModelImpl implements _WatchHistoryModel {
  const _$WatchHistoryModelImpl(
      {required this.userId,
      required this.videoId,
      this.lastPositionSeconds,
      this.updatedAt});

  factory _$WatchHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatchHistoryModelImplFromJson(json);

  @override
  final int userId;
  @override
  final int videoId;
  @override
  final int? lastPositionSeconds;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'WatchHistoryModel(userId: $userId, videoId: $videoId, lastPositionSeconds: $lastPositionSeconds, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchHistoryModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.lastPositionSeconds, lastPositionSeconds) ||
                other.lastPositionSeconds == lastPositionSeconds) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, videoId, lastPositionSeconds, updatedAt);

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchHistoryModelImplCopyWith<_$WatchHistoryModelImpl> get copyWith =>
      __$$WatchHistoryModelImplCopyWithImpl<_$WatchHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WatchHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _WatchHistoryModel implements WatchHistoryModel {
  const factory _WatchHistoryModel(
      {required final int userId,
      required final int videoId,
      final int? lastPositionSeconds,
      final DateTime? updatedAt}) = _$WatchHistoryModelImpl;

  factory _WatchHistoryModel.fromJson(Map<String, dynamic> json) =
      _$WatchHistoryModelImpl.fromJson;

  @override
  int get userId;
  @override
  int get videoId;
  @override
  int? get lastPositionSeconds;
  @override
  DateTime? get updatedAt;

  /// Create a copy of WatchHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchHistoryModelImplCopyWith<_$WatchHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
