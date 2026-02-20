// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpSessionEntity {
  DateTime get expiresAt => throw _privateConstructorUsedError;
  int get retryAfter => throw _privateConstructorUsedError;

  /// Create a copy of OtpSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpSessionEntityCopyWith<OtpSessionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpSessionEntityCopyWith<$Res> {
  factory $OtpSessionEntityCopyWith(
          OtpSessionEntity value, $Res Function(OtpSessionEntity) then) =
      _$OtpSessionEntityCopyWithImpl<$Res, OtpSessionEntity>;
  @useResult
  $Res call({DateTime expiresAt, int retryAfter});
}

/// @nodoc
class _$OtpSessionEntityCopyWithImpl<$Res, $Val extends OtpSessionEntity>
    implements $OtpSessionEntityCopyWith<$Res> {
  _$OtpSessionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = null,
    Object? retryAfter = null,
  }) {
    return _then(_value.copyWith(
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpSessionEntityImplCopyWith<$Res>
    implements $OtpSessionEntityCopyWith<$Res> {
  factory _$$OtpSessionEntityImplCopyWith(_$OtpSessionEntityImpl value,
          $Res Function(_$OtpSessionEntityImpl) then) =
      __$$OtpSessionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime expiresAt, int retryAfter});
}

/// @nodoc
class __$$OtpSessionEntityImplCopyWithImpl<$Res>
    extends _$OtpSessionEntityCopyWithImpl<$Res, _$OtpSessionEntityImpl>
    implements _$$OtpSessionEntityImplCopyWith<$Res> {
  __$$OtpSessionEntityImplCopyWithImpl(_$OtpSessionEntityImpl _value,
      $Res Function(_$OtpSessionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = null,
    Object? retryAfter = null,
  }) {
    return _then(_$OtpSessionEntityImpl(
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtpSessionEntityImpl extends _OtpSessionEntity {
  const _$OtpSessionEntityImpl(
      {required this.expiresAt, required this.retryAfter})
      : super._();

  @override
  final DateTime expiresAt;
  @override
  final int retryAfter;

  @override
  String toString() {
    return 'OtpSessionEntity(expiresAt: $expiresAt, retryAfter: $retryAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSessionEntityImpl &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expiresAt, retryAfter);

  /// Create a copy of OtpSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSessionEntityImplCopyWith<_$OtpSessionEntityImpl> get copyWith =>
      __$$OtpSessionEntityImplCopyWithImpl<_$OtpSessionEntityImpl>(
          this, _$identity);
}

abstract class _OtpSessionEntity extends OtpSessionEntity {
  const factory _OtpSessionEntity(
      {required final DateTime expiresAt,
      required final int retryAfter}) = _$OtpSessionEntityImpl;
  const _OtpSessionEntity._() : super._();

  @override
  DateTime get expiresAt;
  @override
  int get retryAfter;

  /// Create a copy of OtpSessionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSessionEntityImplCopyWith<_$OtpSessionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
