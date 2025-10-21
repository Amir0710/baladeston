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
  String get phone => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  DateTime get verifiedAt => throw _privateConstructorUsedError;

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
  $Res call(
      {String phone, bool isVerified, String? sessionId, DateTime verifiedAt});
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
    Object? phone = null,
    Object? isVerified = null,
    Object? sessionId = freezed,
    Object? verifiedAt = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
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
  $Res call(
      {String phone, bool isVerified, String? sessionId, DateTime verifiedAt});
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
    Object? phone = null,
    Object? isVerified = null,
    Object? sessionId = freezed,
    Object? verifiedAt = null,
  }) {
    return _then(_$VerificationModelImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationModelImpl implements _VerificationModel {
  const _$VerificationModelImpl(
      {required this.phone,
      required this.isVerified,
      this.sessionId,
      required this.verifiedAt});

  factory _$VerificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationModelImplFromJson(json);

  @override
  final String phone;
  @override
  final bool isVerified;
  @override
  final String? sessionId;
  @override
  final DateTime verifiedAt;

  @override
  String toString() {
    return 'VerificationModel(phone: $phone, isVerified: $isVerified, sessionId: $sessionId, verifiedAt: $verifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, isVerified, sessionId, verifiedAt);

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
      {required final String phone,
      required final bool isVerified,
      final String? sessionId,
      required final DateTime verifiedAt}) = _$VerificationModelImpl;

  factory _VerificationModel.fromJson(Map<String, dynamic> json) =
      _$VerificationModelImpl.fromJson;

  @override
  String get phone;
  @override
  bool get isVerified;
  @override
  String? get sessionId;
  @override
  DateTime get verifiedAt;

  /// Create a copy of VerificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationModelImplCopyWith<_$VerificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
