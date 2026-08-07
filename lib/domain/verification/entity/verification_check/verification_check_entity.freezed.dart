// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_check_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationCheckEntity {
  String get phone => throw _privateConstructorUsedError;
  int get otpCode => throw _privateConstructorUsedError;
  VerificationPurposeModel get purpose => throw _privateConstructorUsedError;

  /// Create a copy of VerificationCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationCheckEntityCopyWith<VerificationCheckEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCheckEntityCopyWith<$Res> {
  factory $VerificationCheckEntityCopyWith(VerificationCheckEntity value,
          $Res Function(VerificationCheckEntity) then) =
      _$VerificationCheckEntityCopyWithImpl<$Res, VerificationCheckEntity>;
  @useResult
  $Res call({String phone, int otpCode, VerificationPurposeModel purpose});
}

/// @nodoc
class _$VerificationCheckEntityCopyWithImpl<$Res,
        $Val extends VerificationCheckEntity>
    implements $VerificationCheckEntityCopyWith<$Res> {
  _$VerificationCheckEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otpCode = null,
    Object? purpose = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as VerificationPurposeModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationCheckEntityImplCopyWith<$Res>
    implements $VerificationCheckEntityCopyWith<$Res> {
  factory _$$VerificationCheckEntityImplCopyWith(
          _$VerificationCheckEntityImpl value,
          $Res Function(_$VerificationCheckEntityImpl) then) =
      __$$VerificationCheckEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, int otpCode, VerificationPurposeModel purpose});
}

/// @nodoc
class __$$VerificationCheckEntityImplCopyWithImpl<$Res>
    extends _$VerificationCheckEntityCopyWithImpl<$Res,
        _$VerificationCheckEntityImpl>
    implements _$$VerificationCheckEntityImplCopyWith<$Res> {
  __$$VerificationCheckEntityImplCopyWithImpl(
      _$VerificationCheckEntityImpl _value,
      $Res Function(_$VerificationCheckEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otpCode = null,
    Object? purpose = null,
  }) {
    return _then(_$VerificationCheckEntityImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as VerificationPurposeModel,
    ));
  }
}

/// @nodoc

class _$VerificationCheckEntityImpl implements _VerificationCheckEntity {
  const _$VerificationCheckEntityImpl(
      {required this.phone, required this.otpCode, required this.purpose});

  @override
  final String phone;
  @override
  final int otpCode;
  @override
  final VerificationPurposeModel purpose;

  @override
  String toString() {
    return 'VerificationCheckEntity(phone: $phone, otpCode: $otpCode, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationCheckEntityImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otpCode, purpose);

  /// Create a copy of VerificationCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationCheckEntityImplCopyWith<_$VerificationCheckEntityImpl>
      get copyWith => __$$VerificationCheckEntityImplCopyWithImpl<
          _$VerificationCheckEntityImpl>(this, _$identity);
}

abstract class _VerificationCheckEntity implements VerificationCheckEntity {
  const factory _VerificationCheckEntity(
          {required final String phone,
          required final int otpCode,
          required final VerificationPurposeModel purpose}) =
      _$VerificationCheckEntityImpl;

  @override
  String get phone;
  @override
  int get otpCode;
  @override
  VerificationPurposeModel get purpose;

  /// Create a copy of VerificationCheckEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationCheckEntityImplCopyWith<_$VerificationCheckEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
