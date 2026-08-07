// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogoutRequestEntity {
  String get deviceId => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoutRequestEntityCopyWith<LogoutRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutRequestEntityCopyWith<$Res> {
  factory $LogoutRequestEntityCopyWith(
          LogoutRequestEntity value, $Res Function(LogoutRequestEntity) then) =
      _$LogoutRequestEntityCopyWithImpl<$Res, LogoutRequestEntity>;
  @useResult
  $Res call({String deviceId, String refreshToken});
}

/// @nodoc
class _$LogoutRequestEntityCopyWithImpl<$Res, $Val extends LogoutRequestEntity>
    implements $LogoutRequestEntityCopyWith<$Res> {
  _$LogoutRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutRequestEntityImplCopyWith<$Res>
    implements $LogoutRequestEntityCopyWith<$Res> {
  factory _$$LogoutRequestEntityImplCopyWith(_$LogoutRequestEntityImpl value,
          $Res Function(_$LogoutRequestEntityImpl) then) =
      __$$LogoutRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId, String refreshToken});
}

/// @nodoc
class __$$LogoutRequestEntityImplCopyWithImpl<$Res>
    extends _$LogoutRequestEntityCopyWithImpl<$Res, _$LogoutRequestEntityImpl>
    implements _$$LogoutRequestEntityImplCopyWith<$Res> {
  __$$LogoutRequestEntityImplCopyWithImpl(_$LogoutRequestEntityImpl _value,
      $Res Function(_$LogoutRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? refreshToken = null,
  }) {
    return _then(_$LogoutRequestEntityImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutRequestEntityImpl implements _LogoutRequestEntity {
  const _$LogoutRequestEntityImpl(
      {required this.deviceId, required this.refreshToken});

  @override
  final String deviceId;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LogoutRequestEntity(deviceId: $deviceId, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestEntityImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceId, refreshToken);

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutRequestEntityImplCopyWith<_$LogoutRequestEntityImpl> get copyWith =>
      __$$LogoutRequestEntityImplCopyWithImpl<_$LogoutRequestEntityImpl>(
          this, _$identity);
}

abstract class _LogoutRequestEntity implements LogoutRequestEntity {
  const factory _LogoutRequestEntity(
      {required final String deviceId,
      required final String refreshToken}) = _$LogoutRequestEntityImpl;

  @override
  String get deviceId;
  @override
  String get refreshToken;

  /// Create a copy of LogoutRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutRequestEntityImplCopyWith<_$LogoutRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
