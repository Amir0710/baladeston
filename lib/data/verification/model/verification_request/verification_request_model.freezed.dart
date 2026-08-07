// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationRequestModel _$VerificationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VerificationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationRequestModel {
  String get phone => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  VerificationPurposeModel get purpose => throw _privateConstructorUsedError;

  /// Serializes this VerificationRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationRequestModelCopyWith<VerificationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationRequestModelCopyWith<$Res> {
  factory $VerificationRequestModelCopyWith(VerificationRequestModel value,
          $Res Function(VerificationRequestModel) then) =
      _$VerificationRequestModelCopyWithImpl<$Res, VerificationRequestModel>;
  @useResult
  $Res call({String phone, int targetId, VerificationPurposeModel purpose});
}

/// @nodoc
class _$VerificationRequestModelCopyWithImpl<$Res,
        $Val extends VerificationRequestModel>
    implements $VerificationRequestModelCopyWith<$Res> {
  _$VerificationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? targetId = null,
    Object? purpose = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      purpose: null == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as VerificationPurposeModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationRequestModelImplCopyWith<$Res>
    implements $VerificationRequestModelCopyWith<$Res> {
  factory _$$VerificationRequestModelImplCopyWith(
          _$VerificationRequestModelImpl value,
          $Res Function(_$VerificationRequestModelImpl) then) =
      __$$VerificationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, int targetId, VerificationPurposeModel purpose});
}

/// @nodoc
class __$$VerificationRequestModelImplCopyWithImpl<$Res>
    extends _$VerificationRequestModelCopyWithImpl<$Res,
        _$VerificationRequestModelImpl>
    implements _$$VerificationRequestModelImplCopyWith<$Res> {
  __$$VerificationRequestModelImplCopyWithImpl(
      _$VerificationRequestModelImpl _value,
      $Res Function(_$VerificationRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? targetId = null,
    Object? purpose = null,
  }) {
    return _then(_$VerificationRequestModelImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
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
class _$VerificationRequestModelImpl implements _VerificationRequestModel {
  const _$VerificationRequestModelImpl(
      {required this.phone, required this.targetId, required this.purpose});

  factory _$VerificationRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationRequestModelImplFromJson(json);

  @override
  final String phone;
  @override
  final int targetId;
  @override
  final VerificationPurposeModel purpose;

  @override
  String toString() {
    return 'VerificationRequestModel(phone: $phone, targetId: $targetId, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationRequestModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, targetId, purpose);

  /// Create a copy of VerificationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationRequestModelImplCopyWith<_$VerificationRequestModelImpl>
      get copyWith => __$$VerificationRequestModelImplCopyWithImpl<
          _$VerificationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationRequestModel implements VerificationRequestModel {
  const factory _VerificationRequestModel(
          {required final String phone,
          required final int targetId,
          required final VerificationPurposeModel purpose}) =
      _$VerificationRequestModelImpl;

  factory _VerificationRequestModel.fromJson(Map<String, dynamic> json) =
      _$VerificationRequestModelImpl.fromJson;

  @override
  String get phone;
  @override
  int get targetId;
  @override
  VerificationPurposeModel get purpose;

  /// Create a copy of VerificationRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationRequestModelImplCopyWith<_$VerificationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
