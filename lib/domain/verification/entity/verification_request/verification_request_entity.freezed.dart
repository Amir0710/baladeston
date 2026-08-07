// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationRequestEntity {
  String get phone => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  VerificationPurposeModel get purpose => throw _privateConstructorUsedError;

  /// Create a copy of VerificationRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationRequestEntityCopyWith<VerificationRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationRequestEntityCopyWith<$Res> {
  factory $VerificationRequestEntityCopyWith(VerificationRequestEntity value,
          $Res Function(VerificationRequestEntity) then) =
      _$VerificationRequestEntityCopyWithImpl<$Res, VerificationRequestEntity>;
  @useResult
  $Res call({String phone, int targetId, VerificationPurposeModel purpose});
}

/// @nodoc
class _$VerificationRequestEntityCopyWithImpl<$Res,
        $Val extends VerificationRequestEntity>
    implements $VerificationRequestEntityCopyWith<$Res> {
  _$VerificationRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationRequestEntity
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
abstract class _$$VerificationRequestEntityImplCopyWith<$Res>
    implements $VerificationRequestEntityCopyWith<$Res> {
  factory _$$VerificationRequestEntityImplCopyWith(
          _$VerificationRequestEntityImpl value,
          $Res Function(_$VerificationRequestEntityImpl) then) =
      __$$VerificationRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, int targetId, VerificationPurposeModel purpose});
}

/// @nodoc
class __$$VerificationRequestEntityImplCopyWithImpl<$Res>
    extends _$VerificationRequestEntityCopyWithImpl<$Res,
        _$VerificationRequestEntityImpl>
    implements _$$VerificationRequestEntityImplCopyWith<$Res> {
  __$$VerificationRequestEntityImplCopyWithImpl(
      _$VerificationRequestEntityImpl _value,
      $Res Function(_$VerificationRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? targetId = null,
    Object? purpose = null,
  }) {
    return _then(_$VerificationRequestEntityImpl(
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

class _$VerificationRequestEntityImpl implements _VerificationRequestEntity {
  const _$VerificationRequestEntityImpl(
      {required this.phone, required this.targetId, required this.purpose});

  @override
  final String phone;
  @override
  final int targetId;
  @override
  final VerificationPurposeModel purpose;

  @override
  String toString() {
    return 'VerificationRequestEntity(phone: $phone, targetId: $targetId, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationRequestEntityImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, targetId, purpose);

  /// Create a copy of VerificationRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationRequestEntityImplCopyWith<_$VerificationRequestEntityImpl>
      get copyWith => __$$VerificationRequestEntityImplCopyWithImpl<
          _$VerificationRequestEntityImpl>(this, _$identity);
}

abstract class _VerificationRequestEntity implements VerificationRequestEntity {
  const factory _VerificationRequestEntity(
          {required final String phone,
          required final int targetId,
          required final VerificationPurposeModel purpose}) =
      _$VerificationRequestEntityImpl;

  @override
  String get phone;
  @override
  int get targetId;
  @override
  VerificationPurposeModel get purpose;

  /// Create a copy of VerificationRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationRequestEntityImplCopyWith<_$VerificationRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
