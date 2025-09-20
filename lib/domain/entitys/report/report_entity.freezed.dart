// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReportEntity {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  DateTime get reportedAt => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  DateTime? get responseAt => throw _privateConstructorUsedError;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportEntityCopyWith<ReportEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEntityCopyWith<$Res> {
  factory $ReportEntityCopyWith(
          ReportEntity value, $Res Function(ReportEntity) then) =
      _$ReportEntityCopyWithImpl<$Res, ReportEntity>;
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      String response,
      DateTime reportedAt,
      String? reason,
      DateTime? responseAt});
}

/// @nodoc
class _$ReportEntityCopyWithImpl<$Res, $Val extends ReportEntity>
    implements $ReportEntityCopyWith<$Res> {
  _$ReportEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reportedAt = null,
    Object? reason = freezed,
    Object? responseAt = freezed,
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
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      responseAt: freezed == responseAt
          ? _value.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportEntityImplCopyWith<$Res>
    implements $ReportEntityCopyWith<$Res> {
  factory _$$ReportEntityImplCopyWith(
          _$ReportEntityImpl value, $Res Function(_$ReportEntityImpl) then) =
      __$$ReportEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      String response,
      DateTime reportedAt,
      String? reason,
      DateTime? responseAt});
}

/// @nodoc
class __$$ReportEntityImplCopyWithImpl<$Res>
    extends _$ReportEntityCopyWithImpl<$Res, _$ReportEntityImpl>
    implements _$$ReportEntityImplCopyWith<$Res> {
  __$$ReportEntityImplCopyWithImpl(
      _$ReportEntityImpl _value, $Res Function(_$ReportEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reportedAt = null,
    Object? reason = freezed,
    Object? responseAt = freezed,
  }) {
    return _then(_$ReportEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      reportedAt: null == reportedAt
          ? _value.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      responseAt: freezed == responseAt
          ? _value.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ReportEntityImpl implements _ReportEntity {
  const _$ReportEntityImpl(
      {required this.id,
      required this.userId,
      required this.targetId,
      required this.response,
      required this.reportedAt,
      required this.reason,
      required this.responseAt});

  @override
  final int? id;
  @override
  final int userId;
  @override
  final int targetId;
  @override
  final String response;
  @override
  final DateTime reportedAt;
  @override
  final String? reason;
  @override
  final DateTime? responseAt;

  @override
  String toString() {
    return 'ReportEntity(id: $id, userId: $userId, targetId: $targetId, response: $response, reportedAt: $reportedAt, reason: $reason, responseAt: $responseAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, response,
      reportedAt, reason, responseAt);

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportEntityImplCopyWith<_$ReportEntityImpl> get copyWith =>
      __$$ReportEntityImplCopyWithImpl<_$ReportEntityImpl>(this, _$identity);
}

abstract class _ReportEntity implements ReportEntity {
  const factory _ReportEntity(
      {required final int? id,
      required final int userId,
      required final int targetId,
      required final String response,
      required final DateTime reportedAt,
      required final String? reason,
      required final DateTime? responseAt}) = _$ReportEntityImpl;

  @override
  int? get id;
  @override
  int get userId;
  @override
  int get targetId;
  @override
  String get response;
  @override
  DateTime get reportedAt;
  @override
  String? get reason;
  @override
  DateTime? get responseAt;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportEntityImplCopyWith<_$ReportEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
