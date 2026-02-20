// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingTokenEntity {
  String get value => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingTokenEntityCopyWith<OnboardingTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingTokenEntityCopyWith<$Res> {
  factory $OnboardingTokenEntityCopyWith(OnboardingTokenEntity value,
          $Res Function(OnboardingTokenEntity) then) =
      _$OnboardingTokenEntityCopyWithImpl<$Res, OnboardingTokenEntity>;
  @useResult
  $Res call({String value, DateTime expiresAt});
}

/// @nodoc
class _$OnboardingTokenEntityCopyWithImpl<$Res,
        $Val extends OnboardingTokenEntity>
    implements $OnboardingTokenEntityCopyWith<$Res> {
  _$OnboardingTokenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? expiresAt = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingTokenEntityImplCopyWith<$Res>
    implements $OnboardingTokenEntityCopyWith<$Res> {
  factory _$$OnboardingTokenEntityImplCopyWith(
          _$OnboardingTokenEntityImpl value,
          $Res Function(_$OnboardingTokenEntityImpl) then) =
      __$$OnboardingTokenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, DateTime expiresAt});
}

/// @nodoc
class __$$OnboardingTokenEntityImplCopyWithImpl<$Res>
    extends _$OnboardingTokenEntityCopyWithImpl<$Res,
        _$OnboardingTokenEntityImpl>
    implements _$$OnboardingTokenEntityImplCopyWith<$Res> {
  __$$OnboardingTokenEntityImplCopyWithImpl(_$OnboardingTokenEntityImpl _value,
      $Res Function(_$OnboardingTokenEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? expiresAt = null,
  }) {
    return _then(_$OnboardingTokenEntityImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OnboardingTokenEntityImpl extends _OnboardingTokenEntity {
  const _$OnboardingTokenEntityImpl(
      {required this.value, required this.expiresAt})
      : super._();

  @override
  final String value;
  @override
  final DateTime expiresAt;

  @override
  String toString() {
    return 'OnboardingTokenEntity(value: $value, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingTokenEntityImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, expiresAt);

  /// Create a copy of OnboardingTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingTokenEntityImplCopyWith<_$OnboardingTokenEntityImpl>
      get copyWith => __$$OnboardingTokenEntityImplCopyWithImpl<
          _$OnboardingTokenEntityImpl>(this, _$identity);
}

abstract class _OnboardingTokenEntity extends OnboardingTokenEntity {
  const factory _OnboardingTokenEntity(
      {required final String value,
      required final DateTime expiresAt}) = _$OnboardingTokenEntityImpl;
  const _OnboardingTokenEntity._() : super._();

  @override
  String get value;
  @override
  DateTime get expiresAt;

  /// Create a copy of OnboardingTokenEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingTokenEntityImplCopyWith<_$OnboardingTokenEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
