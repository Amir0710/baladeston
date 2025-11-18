// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationModel _$VerificationModelFromJson(Map<String, dynamic> json) {
  return _VerificationModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationModel {
  String? get message => throw _privateConstructorUsedError;
  OtpDataModel? get otpData => throw _privateConstructorUsedError;

  /// Serializes this VerificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationModelCopyWith<VerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationModelCopyWith<$Res> {
  factory $VerificationModelCopyWith(
          VerificationModel value, $Res Function(VerificationModel) then) =
      _$VerificationModelCopyWithImpl<$Res, VerificationModel>;
  @useResult
  $Res call({String? message, OtpDataModel? otpData});

  $OtpDataModelCopyWith<$Res>? get otpData;
}

/// @nodoc
class _$VerificationModelCopyWithImpl<$Res, $Val extends VerificationModel>
    implements $VerificationModelCopyWith<$Res> {
  _$VerificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? otpData = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpData: freezed == otpData
          ? _value.otpData
          : otpData // ignore: cast_nullable_to_non_nullable
              as OtpDataModel?,
    ) as $Val);
  }

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OtpDataModelCopyWith<$Res>? get otpData {
    if (_value.otpData == null) {
      return null;
    }

    return $OtpDataModelCopyWith<$Res>(_value.otpData!, (value) {
      return _then(_value.copyWith(otpData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerificationModelImplCopyWith<$Res>
    implements $VerificationModelCopyWith<$Res> {
  factory _$$VerificationModelImplCopyWith(_$VerificationModelImpl value,
          $Res Function(_$VerificationModelImpl) then) =
      __$$VerificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, OtpDataModel? otpData});

  @override
  $OtpDataModelCopyWith<$Res>? get otpData;
}

/// @nodoc
class __$$VerificationModelImplCopyWithImpl<$Res>
    extends _$VerificationModelCopyWithImpl<$Res, _$VerificationModelImpl>
    implements _$$VerificationModelImplCopyWith<$Res> {
  __$$VerificationModelImplCopyWithImpl(_$VerificationModelImpl _value,
      $Res Function(_$VerificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? otpData = freezed,
  }) {
    return _then(_$VerificationModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpData: freezed == otpData
          ? _value.otpData
          : otpData // ignore: cast_nullable_to_non_nullable
              as OtpDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationModelImpl implements _VerificationModel {
  const _$VerificationModelImpl({this.message, this.otpData});

  factory _$VerificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationModelImplFromJson(json);

  @override
  final String? message;
  @override
  final OtpDataModel? otpData;

  @override
  String toString() {
    return 'VerificationModel(message: $message, otpData: $otpData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.otpData, otpData) || other.otpData == otpData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, otpData);

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationModelImplCopyWith<_$VerificationModelImpl> get copyWith =>
      __$$VerificationModelImplCopyWithImpl<_$VerificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationModel implements VerificationModel {
  const factory _VerificationModel(
      {final String? message,
      final OtpDataModel? otpData}) = _$VerificationModelImpl;

  factory _VerificationModel.fromJson(Map<String, dynamic> json) =
      _$VerificationModelImpl.fromJson;

  @override
  String? get message;
  @override
  OtpDataModel? get otpData;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationModelImplCopyWith<_$VerificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpDataModel _$OtpDataModelFromJson(Map<String, dynamic> json) {
  return _OtpDataModel.fromJson(json);
}

/// @nodoc
mixin _$OtpDataModel {
  int? get otpCode => throw _privateConstructorUsedError;
  int? get expiresIn => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OtpDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpDataModelCopyWith<OtpDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDataModelCopyWith<$Res> {
  factory $OtpDataModelCopyWith(
          OtpDataModel value, $Res Function(OtpDataModel) then) =
      _$OtpDataModelCopyWithImpl<$Res, OtpDataModel>;
  @useResult
  $Res call({int? otpCode, int? expiresIn, int? createdAt});
}

/// @nodoc
class _$OtpDataModelCopyWithImpl<$Res, $Val extends OtpDataModel>
    implements $OtpDataModelCopyWith<$Res> {
  _$OtpDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = freezed,
    Object? expiresIn = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$OtpDataModelImplCopyWith<$Res>
    implements $OtpDataModelCopyWith<$Res> {
  factory _$$OtpDataModelImplCopyWith(
          _$OtpDataModelImpl value, $Res Function(_$OtpDataModelImpl) then) =
      __$$OtpDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? otpCode, int? expiresIn, int? createdAt});
}

/// @nodoc
class __$$OtpDataModelImplCopyWithImpl<$Res>
    extends _$OtpDataModelCopyWithImpl<$Res, _$OtpDataModelImpl>
    implements _$$OtpDataModelImplCopyWith<$Res> {
  __$$OtpDataModelImplCopyWithImpl(
      _$OtpDataModelImpl _value, $Res Function(_$OtpDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = freezed,
    Object? expiresIn = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$OtpDataModelImpl(
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
@JsonSerializable()
class _$OtpDataModelImpl implements _OtpDataModel {
  const _$OtpDataModelImpl({this.otpCode, this.expiresIn, this.createdAt});

  factory _$OtpDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpDataModelImplFromJson(json);

  @override
  final int? otpCode;
  @override
  final int? expiresIn;
  @override
  final int? createdAt;

  @override
  String toString() {
    return 'OtpDataModel(otpCode: $otpCode, expiresIn: $expiresIn, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDataModelImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otpCode, expiresIn, createdAt);

  /// Create a copy of OtpDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDataModelImplCopyWith<_$OtpDataModelImpl> get copyWith =>
      __$$OtpDataModelImplCopyWithImpl<_$OtpDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpDataModelImplToJson(
      this,
    );
  }
}

abstract class _OtpDataModel implements OtpDataModel {
  const factory _OtpDataModel(
      {final int? otpCode,
      final int? expiresIn,
      final int? createdAt}) = _$OtpDataModelImpl;

  factory _OtpDataModel.fromJson(Map<String, dynamic> json) =
      _$OtpDataModelImpl.fromJson;

  @override
  int? get otpCode;
  @override
  int? get expiresIn;
  @override
  int? get createdAt;

  /// Create a copy of OtpDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpDataModelImplCopyWith<_$OtpDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
