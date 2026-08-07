// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPasswordEntity {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of UserPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPasswordEntityCopyWith<UserPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPasswordEntityCopyWith<$Res> {
  factory $UserPasswordEntityCopyWith(
          UserPasswordEntity value, $Res Function(UserPasswordEntity) then) =
      _$UserPasswordEntityCopyWithImpl<$Res, UserPasswordEntity>;
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class _$UserPasswordEntityCopyWithImpl<$Res, $Val extends UserPasswordEntity>
    implements $UserPasswordEntityCopyWith<$Res> {
  _$UserPasswordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPasswordEntityImplCopyWith<$Res>
    implements $UserPasswordEntityCopyWith<$Res> {
  factory _$$UserPasswordEntityImplCopyWith(_$UserPasswordEntityImpl value,
          $Res Function(_$UserPasswordEntityImpl) then) =
      __$$UserPasswordEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$UserPasswordEntityImplCopyWithImpl<$Res>
    extends _$UserPasswordEntityCopyWithImpl<$Res, _$UserPasswordEntityImpl>
    implements _$$UserPasswordEntityImplCopyWith<$Res> {
  __$$UserPasswordEntityImplCopyWithImpl(_$UserPasswordEntityImpl _value,
      $Res Function(_$UserPasswordEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_$UserPasswordEntityImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserPasswordEntityImpl implements _UserPasswordEntity {
  const _$UserPasswordEntityImpl(
      {required this.identifier, required this.password});

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'UserPasswordEntity(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPasswordEntityImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier, password);

  /// Create a copy of UserPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPasswordEntityImplCopyWith<_$UserPasswordEntityImpl> get copyWith =>
      __$$UserPasswordEntityImplCopyWithImpl<_$UserPasswordEntityImpl>(
          this, _$identity);
}

abstract class _UserPasswordEntity implements UserPasswordEntity {
  const factory _UserPasswordEntity(
      {required final String identifier,
      required final String password}) = _$UserPasswordEntityImpl;

  @override
  String get identifier;
  @override
  String get password;

  /// Create a copy of UserPasswordEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPasswordEntityImplCopyWith<_$UserPasswordEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
