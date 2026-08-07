// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestEntity {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  RequestStatus? get status => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get requestAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestEntityCopyWith<RequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEntityCopyWith<$Res> {
  factory $RequestEntityCopyWith(
          RequestEntity value, $Res Function(RequestEntity) then) =
      _$RequestEntityCopyWithImpl<$Res, RequestEntity>;
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      RequestStatus? status,
      DateTime? expiresAt,
      DateTime? requestAt,
      String? message,
      String? response});
}

/// @nodoc
class _$RequestEntityCopyWithImpl<$Res, $Val extends RequestEntity>
    implements $RequestEntityCopyWith<$Res> {
  _$RequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? requestAt = freezed,
    Object? message = freezed,
    Object? response = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestAt: freezed == requestAt
          ? _value.requestAt
          : requestAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestEntityImplCopyWith<$Res>
    implements $RequestEntityCopyWith<$Res> {
  factory _$$RequestEntityImplCopyWith(
          _$RequestEntityImpl value, $Res Function(_$RequestEntityImpl) then) =
      __$$RequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      RequestStatus? status,
      DateTime? expiresAt,
      DateTime? requestAt,
      String? message,
      String? response});
}

/// @nodoc
class __$$RequestEntityImplCopyWithImpl<$Res>
    extends _$RequestEntityCopyWithImpl<$Res, _$RequestEntityImpl>
    implements _$$RequestEntityImplCopyWith<$Res> {
  __$$RequestEntityImplCopyWithImpl(
      _$RequestEntityImpl _value, $Res Function(_$RequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? status = freezed,
    Object? expiresAt = freezed,
    Object? requestAt = freezed,
    Object? message = freezed,
    Object? response = freezed,
  }) {
    return _then(_$RequestEntityImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestAt: freezed == requestAt
          ? _value.requestAt
          : requestAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestEntityImpl implements _RequestEntity {
  const _$RequestEntityImpl(
      {this.id,
      required this.userId,
      required this.targetId,
      this.status,
      this.expiresAt,
      this.requestAt,
      this.message,
      this.response});

  @override
  final int? id;
  @override
  final int userId;
  @override
  final int targetId;
  @override
  final RequestStatus? status;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? requestAt;
  @override
  final String? message;
  @override
  final String? response;

  @override
  String toString() {
    return 'RequestEntity(id: $id, userId: $userId, targetId: $targetId, status: $status, expiresAt: $expiresAt, requestAt: $requestAt, message: $message, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.requestAt, requestAt) ||
                other.requestAt == requestAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, status,
      expiresAt, requestAt, message, response);

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      __$$RequestEntityImplCopyWithImpl<_$RequestEntityImpl>(this, _$identity);
}

abstract class _RequestEntity implements RequestEntity {
  const factory _RequestEntity(
      {final int? id,
      required final int userId,
      required final int targetId,
      final RequestStatus? status,
      final DateTime? expiresAt,
      final DateTime? requestAt,
      final String? message,
      final String? response}) = _$RequestEntityImpl;

  @override
  int? get id;
  @override
  int get userId;
  @override
  int get targetId;
  @override
  RequestStatus? get status;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get requestAt;
  @override
  String? get message;
  @override
  String? get response;

  /// Create a copy of RequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
