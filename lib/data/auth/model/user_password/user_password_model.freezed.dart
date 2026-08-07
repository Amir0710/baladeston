// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPasswordModel _$UserPasswordModelFromJson(Map<String, dynamic> json) {
  return _UserPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$UserPasswordModel {
  String get identifier => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserPasswordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPasswordModelCopyWith<UserPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPasswordModelCopyWith<$Res> {
  factory $UserPasswordModelCopyWith(
          UserPasswordModel value, $Res Function(UserPasswordModel) then) =
      _$UserPasswordModelCopyWithImpl<$Res, UserPasswordModel>;
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class _$UserPasswordModelCopyWithImpl<$Res, $Val extends UserPasswordModel>
    implements $UserPasswordModelCopyWith<$Res> {
  _$UserPasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPasswordModel
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
abstract class _$$UserPasswordModelImplCopyWith<$Res>
    implements $UserPasswordModelCopyWith<$Res> {
  factory _$$UserPasswordModelImplCopyWith(_$UserPasswordModelImpl value,
          $Res Function(_$UserPasswordModelImpl) then) =
      __$$UserPasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier, String password});
}

/// @nodoc
class __$$UserPasswordModelImplCopyWithImpl<$Res>
    extends _$UserPasswordModelCopyWithImpl<$Res, _$UserPasswordModelImpl>
    implements _$$UserPasswordModelImplCopyWith<$Res> {
  __$$UserPasswordModelImplCopyWithImpl(_$UserPasswordModelImpl _value,
      $Res Function(_$UserPasswordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
  }) {
    return _then(_$UserPasswordModelImpl(
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
@JsonSerializable()
class _$UserPasswordModelImpl implements _UserPasswordModel {
  const _$UserPasswordModelImpl(
      {required this.identifier, required this.password});

  factory _$UserPasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPasswordModelImplFromJson(json);

  @override
  final String identifier;
  @override
  final String password;

  @override
  String toString() {
    return 'UserPasswordModel(identifier: $identifier, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPasswordModelImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, password);

  /// Create a copy of UserPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPasswordModelImplCopyWith<_$UserPasswordModelImpl> get copyWith =>
      __$$UserPasswordModelImplCopyWithImpl<_$UserPasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPasswordModelImplToJson(
      this,
    );
  }
}

abstract class _UserPasswordModel implements UserPasswordModel {
  const factory _UserPasswordModel(
      {required final String identifier,
      required final String password}) = _$UserPasswordModelImpl;

  factory _UserPasswordModel.fromJson(Map<String, dynamic> json) =
      _$UserPasswordModelImpl.fromJson;

  @override
  String get identifier;
  @override
  String get password;

  /// Create a copy of UserPasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPasswordModelImplCopyWith<_$UserPasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
