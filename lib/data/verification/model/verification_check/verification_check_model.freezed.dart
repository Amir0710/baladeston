// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationCheckModel _$VerificationCheckModelFromJson(
    Map<String, dynamic> json) {
  return _VerificationCheckModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationCheckModel {
  String get phone => throw _privateConstructorUsedError;
  int get otpCode => throw _privateConstructorUsedError;
  VerificationPurposeModel get purpose => throw _privateConstructorUsedError;

  /// Serializes this VerificationCheckModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationCheckModelCopyWith<VerificationCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationCheckModelCopyWith<$Res> {
  factory $VerificationCheckModelCopyWith(VerificationCheckModel value,
          $Res Function(VerificationCheckModel) then) =
      _$VerificationCheckModelCopyWithImpl<$Res, VerificationCheckModel>;
  @useResult
  $Res call({String phone, int otpCode, VerificationPurposeModel purpose});
}

/// @nodoc
class _$VerificationCheckModelCopyWithImpl<$Res,
        $Val extends VerificationCheckModel>
    implements $VerificationCheckModelCopyWith<$Res> {
  _$VerificationCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationCheckModel
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
abstract class _$$VerificationCheckModelImplCopyWith<$Res>
    implements $VerificationCheckModelCopyWith<$Res> {
  factory _$$VerificationCheckModelImplCopyWith(
          _$VerificationCheckModelImpl value,
          $Res Function(_$VerificationCheckModelImpl) then) =
      __$$VerificationCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, int otpCode, VerificationPurposeModel purpose});
}

/// @nodoc
class __$$VerificationCheckModelImplCopyWithImpl<$Res>
    extends _$VerificationCheckModelCopyWithImpl<$Res,
        _$VerificationCheckModelImpl>
    implements _$$VerificationCheckModelImplCopyWith<$Res> {
  __$$VerificationCheckModelImplCopyWithImpl(
      _$VerificationCheckModelImpl _value,
      $Res Function(_$VerificationCheckModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otpCode = null,
    Object? purpose = null,
  }) {
    return _then(_$VerificationCheckModelImpl(
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
@JsonSerializable()
class _$VerificationCheckModelImpl implements _VerificationCheckModel {
  const _$VerificationCheckModelImpl(
      {required this.phone, required this.otpCode, required this.purpose});

  factory _$VerificationCheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationCheckModelImplFromJson(json);

  @override
  final String phone;
  @override
  final int otpCode;
  @override
  final VerificationPurposeModel purpose;

  @override
  String toString() {
    return 'VerificationCheckModel(phone: $phone, otpCode: $otpCode, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationCheckModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, otpCode, purpose);

  /// Create a copy of VerificationCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationCheckModelImplCopyWith<_$VerificationCheckModelImpl>
      get copyWith => __$$VerificationCheckModelImplCopyWithImpl<
          _$VerificationCheckModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationCheckModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationCheckModel implements VerificationCheckModel {
  const factory _VerificationCheckModel(
          {required final String phone,
          required final int otpCode,
          required final VerificationPurposeModel purpose}) =
      _$VerificationCheckModelImpl;

  factory _VerificationCheckModel.fromJson(Map<String, dynamic> json) =
      _$VerificationCheckModelImpl.fromJson;

  @override
  String get phone;
  @override
  int get otpCode;
  @override
  VerificationPurposeModel get purpose;

  /// Create a copy of VerificationCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationCheckModelImplCopyWith<_$VerificationCheckModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
