// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  UserStatus? get status => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  UserGender? get gender => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  int? get failedLoginAttempts => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      String? fullName,
      String? email,
      String? phoneNumber,
      String? avatarUrl,
      UserStatus? status,
      DateTime? createAt,
      String? password,
      UserGender? gender,
      DateTime? birthday,
      String? bio,
      String? country,
      String? language,
      String? timezone,
      int? failedLoginAttempts,
      DateTime? lastLoginAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? createAt = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? bio = freezed,
    Object? country = freezed,
    Object? language = freezed,
    Object? timezone = freezed,
    Object? failedLoginAttempts = freezed,
    Object? lastLoginAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      failedLoginAttempts: freezed == failedLoginAttempts
          ? _value.failedLoginAttempts
          : failedLoginAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? fullName,
      String? email,
      String? phoneNumber,
      String? avatarUrl,
      UserStatus? status,
      DateTime? createAt,
      String? password,
      UserGender? gender,
      DateTime? birthday,
      String? bio,
      String? country,
      String? language,
      String? timezone,
      int? failedLoginAttempts,
      DateTime? lastLoginAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? createAt = freezed,
    Object? password = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? bio = freezed,
    Object? country = freezed,
    Object? language = freezed,
    Object? timezone = freezed,
    Object? failedLoginAttempts = freezed,
    Object? lastLoginAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      failedLoginAttempts: freezed == failedLoginAttempts
          ? _value.failedLoginAttempts
          : failedLoginAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      this.fullName,
      this.email,
      this.phoneNumber,
      this.avatarUrl,
      this.status,
      this.createAt,
      this.password,
      this.gender,
      this.birthday,
      this.bio,
      this.country,
      this.language,
      this.timezone,
      this.failedLoginAttempts,
      this.lastLoginAt,
      this.updatedAt});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? avatarUrl;
  @override
  final UserStatus? status;
  @override
  final DateTime? createAt;
  @override
  final String? password;
  @override
  final UserGender? gender;
  @override
  final DateTime? birthday;
  @override
  final String? bio;
  @override
  final String? country;
  @override
  final String? language;
  @override
  final String? timezone;
  @override
  final int? failedLoginAttempts;
  @override
  final DateTime? lastLoginAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, avatarUrl: $avatarUrl, status: $status, createAt: $createAt, password: $password, gender: $gender, birthday: $birthday, bio: $bio, country: $country, language: $language, timezone: $timezone, failedLoginAttempts: $failedLoginAttempts, lastLoginAt: $lastLoginAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.failedLoginAttempts, failedLoginAttempts) ||
                other.failedLoginAttempts == failedLoginAttempts) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      email,
      phoneNumber,
      avatarUrl,
      status,
      createAt,
      password,
      gender,
      birthday,
      bio,
      country,
      language,
      timezone,
      failedLoginAttempts,
      lastLoginAt,
      updatedAt);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? id,
      final String? fullName,
      final String? email,
      final String? phoneNumber,
      final String? avatarUrl,
      final UserStatus? status,
      final DateTime? createAt,
      final String? password,
      final UserGender? gender,
      final DateTime? birthday,
      final String? bio,
      final String? country,
      final String? language,
      final String? timezone,
      final int? failedLoginAttempts,
      final DateTime? lastLoginAt,
      final DateTime? updatedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get avatarUrl;
  @override
  UserStatus? get status;
  @override
  DateTime? get createAt;
  @override
  String? get password;
  @override
  UserGender? get gender;
  @override
  DateTime? get birthday;
  @override
  String? get bio;
  @override
  String? get country;
  @override
  String? get language;
  @override
  String? get timezone;
  @override
  int? get failedLoginAttempts;
  @override
  DateTime? get lastLoginAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
