// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpSessionModel _$OtpSessionModelFromJson(Map<String, dynamic> json) {
  return _OtpSessionModel.fromJson(json);
}

/// @nodoc
mixin _$OtpSessionModel {
  String get expiresAt => throw _privateConstructorUsedError;
  int get retryAfter => throw _privateConstructorUsedError;

  /// Serializes this OtpSessionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpSessionModelCopyWith<OtpSessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpSessionModelCopyWith<$Res> {
  factory $OtpSessionModelCopyWith(
          OtpSessionModel value, $Res Function(OtpSessionModel) then) =
      _$OtpSessionModelCopyWithImpl<$Res, OtpSessionModel>;
  @useResult
  $Res call({String expiresAt, int retryAfter});
}

/// @nodoc
class _$OtpSessionModelCopyWithImpl<$Res, $Val extends OtpSessionModel>
    implements $OtpSessionModelCopyWith<$Res> {
  _$OtpSessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpSessionModel
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
              as String,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpSessionModelImplCopyWith<$Res>
    implements $OtpSessionModelCopyWith<$Res> {
  factory _$$OtpSessionModelImplCopyWith(_$OtpSessionModelImpl value,
          $Res Function(_$OtpSessionModelImpl) then) =
      __$$OtpSessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String expiresAt, int retryAfter});
}

/// @nodoc
class __$$OtpSessionModelImplCopyWithImpl<$Res>
    extends _$OtpSessionModelCopyWithImpl<$Res, _$OtpSessionModelImpl>
    implements _$$OtpSessionModelImplCopyWith<$Res> {
  __$$OtpSessionModelImplCopyWithImpl(
      _$OtpSessionModelImpl _value, $Res Function(_$OtpSessionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiresAt = null,
    Object? retryAfter = null,
  }) {
    return _then(_$OtpSessionModelImpl(
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String,
      retryAfter: null == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpSessionModelImpl implements _OtpSessionModel {
  const _$OtpSessionModelImpl(
      {required this.expiresAt, required this.retryAfter});

  factory _$OtpSessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpSessionModelImplFromJson(json);

  @override
  final String expiresAt;
  @override
  final int retryAfter;

  @override
  String toString() {
    return 'OtpSessionModel(expiresAt: $expiresAt, retryAfter: $retryAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSessionModelImpl &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, expiresAt, retryAfter);

  /// Create a copy of OtpSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSessionModelImplCopyWith<_$OtpSessionModelImpl> get copyWith =>
      __$$OtpSessionModelImplCopyWithImpl<_$OtpSessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpSessionModelImplToJson(
      this,
    );
  }
}

abstract class _OtpSessionModel implements OtpSessionModel {
  const factory _OtpSessionModel(
      {required final String expiresAt,
      required final int retryAfter}) = _$OtpSessionModelImpl;

  factory _OtpSessionModel.fromJson(Map<String, dynamic> json) =
      _$OtpSessionModelImpl.fromJson;

  @override
  String get expiresAt;
  @override
  int get retryAfter;

  /// Create a copy of OtpSessionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSessionModelImplCopyWith<_$OtpSessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
