// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationEntity {
  String? get message => throw _privateConstructorUsedError;
  int? get otpCode => throw _privateConstructorUsedError;
  int? get expiresIn => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of VerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationEntityCopyWith<VerificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEntityCopyWith<$Res> {
  factory $VerificationEntityCopyWith(
          VerificationEntity value, $Res Function(VerificationEntity) then) =
      _$VerificationEntityCopyWithImpl<$Res, VerificationEntity>;
  @useResult
  $Res call({String? message, int? otpCode, int? expiresIn, int? createdAt});
}

/// @nodoc
class _$VerificationEntityCopyWithImpl<$Res, $Val extends VerificationEntity>
    implements $VerificationEntityCopyWith<$Res> {
  _$VerificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? otpCode = freezed,
    Object? expiresIn = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationEntityImplCopyWith<$Res>
    implements $VerificationEntityCopyWith<$Res> {
  factory _$$VerificationEntityImplCopyWith(_$VerificationEntityImpl value,
          $Res Function(_$VerificationEntityImpl) then) =
      __$$VerificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, int? otpCode, int? expiresIn, int? createdAt});
}

/// @nodoc
class __$$VerificationEntityImplCopyWithImpl<$Res>
    extends _$VerificationEntityCopyWithImpl<$Res, _$VerificationEntityImpl>
    implements _$$VerificationEntityImplCopyWith<$Res> {
  __$$VerificationEntityImplCopyWithImpl(_$VerificationEntityImpl _value,
      $Res Function(_$VerificationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? otpCode = freezed,
    Object? expiresIn = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$VerificationEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpCode: freezed == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$VerificationEntityImpl implements _VerificationEntity {
  const _$VerificationEntityImpl(
      {this.message, this.otpCode, this.expiresIn, this.createdAt});

  @override
  final String? message;
  @override
  final int? otpCode;
  @override
  final int? expiresIn;
  @override
  final int? createdAt;

  @override
  String toString() {
    return 'VerificationEntity(message: $message, otpCode: $otpCode, expiresIn: $expiresIn, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationEntityImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, otpCode, expiresIn, createdAt);

  /// Create a copy of VerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationEntityImplCopyWith<_$VerificationEntityImpl> get copyWith =>
      __$$VerificationEntityImplCopyWithImpl<_$VerificationEntityImpl>(
          this, _$identity);
}

abstract class _VerificationEntity implements VerificationEntity {
  const factory _VerificationEntity(
      {final String? message,
      final int? otpCode,
      final int? expiresIn,
      final int? createdAt}) = _$VerificationEntityImpl;

  @override
  String? get message;
  @override
  int? get otpCode;
  @override
  int? get expiresIn;
  @override
  int? get createdAt;

  /// Create a copy of VerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationEntityImplCopyWith<_$VerificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
