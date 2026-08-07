// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationResponseModel _$VerificationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationResponseModel {
  DateTime get expiresAt => throw _privateConstructorUsedError;
  int get retryAfter => throw _privateConstructorUsedError;

  /// Serializes this VerificationResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationResponseModelCopyWith<VerificationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResponseModelCopyWith<$Res> {
  factory $VerificationResponseModelCopyWith(VerificationResponseModel value,
          $Res Function(VerificationResponseModel) then) =
      _$VerificationResponseModelCopyWithImpl<$Res, VerificationResponseModel>;
  @useResult
  $Res call({DateTime expiresAt, int retryAfter});
}

/// @nodoc
class _$VerificationResponseModelCopyWithImpl<$Res,
        $Val extends VerificationResponseModel>
    implements $VerificationResponseModelCopyWith<$Res> {
  _$VerificationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationResponseModel
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
abstract class _$$VerificationResponseModelImplCopyWith<$Res>
    implements $VerificationResponseModelCopyWith<$Res> {
  factory _$$VerificationResponseModelImplCopyWith(
          _$VerificationResponseModelImpl value,
          $Res Function(_$VerificationResponseModelImpl) then) =
      __$$VerificationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime expiresAt, int retryAfter});
}

/// @nodoc
class __$$VerificationResponseModelImplCopyWithImpl<$Res>
    extends _$VerificationResponseModelCopyWithImpl<$Res,
        _$VerificationResponseModelImpl>
    implements _$$VerificationResponseModelImplCopyWith<$Res> {
  __$$VerificationResponseModelImplCopyWithImpl(
      _$VerificationResponseModelImpl _value,
      $Res Function(_$VerificationResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = null,
    Object? retryAfter = null,
  }) {
    return _then(_$VerificationResponseModelImpl(
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
@JsonSerializable()
class _$VerificationResponseModelImpl implements _VerificationResponseModel {
  const _$VerificationResponseModelImpl(
      {required this.expiresAt, required this.retryAfter});

  factory _$VerificationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationResponseModelImplFromJson(json);

  @override
  final DateTime expiresAt;
  @override
  final int retryAfter;

  @override
  String toString() {
    return 'VerificationResponseModel(expiresAt: $expiresAt, retryAfter: $retryAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationResponseModelImpl &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expiresAt, retryAfter);

  /// Create a copy of VerificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationResponseModelImplCopyWith<_$VerificationResponseModelImpl>
      get copyWith => __$$VerificationResponseModelImplCopyWithImpl<
          _$VerificationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerificationResponseModel implements VerificationResponseModel {
  const factory _VerificationResponseModel(
      {required final DateTime expiresAt,
      required final int retryAfter}) = _$VerificationResponseModelImpl;

  factory _VerificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerificationResponseModelImpl.fromJson;

  @override
  DateTime get expiresAt;
  @override
  int get retryAfter;

  /// Create a copy of VerificationResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationResponseModelImplCopyWith<_$VerificationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
