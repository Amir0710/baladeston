// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectionEntity {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastTransaction => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionEntityCopyWith<CollectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEntityCopyWith<$Res> {
  factory $CollectionEntityCopyWith(
          CollectionEntity value, $Res Function(CollectionEntity) then) =
      _$CollectionEntityCopyWithImpl<$Res, CollectionEntity>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String? status,
      DateTime createdAt,
      DateTime lastTransaction,
      int ownerId,
      String? thumbnailUrl});
}

/// @nodoc
class _$CollectionEntityCopyWithImpl<$Res, $Val extends CollectionEntity>
    implements $CollectionEntityCopyWith<$Res> {
  _$CollectionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = freezed,
    Object? createdAt = null,
    Object? lastTransaction = null,
    Object? ownerId = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTransaction: null == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionEntityImplCopyWith<$Res>
    implements $CollectionEntityCopyWith<$Res> {
  factory _$$CollectionEntityImplCopyWith(_$CollectionEntityImpl value,
          $Res Function(_$CollectionEntityImpl) then) =
      __$$CollectionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String? status,
      DateTime createdAt,
      DateTime lastTransaction,
      int ownerId,
      String? thumbnailUrl});
}

/// @nodoc
class __$$CollectionEntityImplCopyWithImpl<$Res>
    extends _$CollectionEntityCopyWithImpl<$Res, _$CollectionEntityImpl>
    implements _$$CollectionEntityImplCopyWith<$Res> {
  __$$CollectionEntityImplCopyWithImpl(_$CollectionEntityImpl _value,
      $Res Function(_$CollectionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = freezed,
    Object? createdAt = null,
    Object? lastTransaction = null,
    Object? ownerId = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$CollectionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTransaction: null == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CollectionEntityImpl implements _CollectionEntity {
  const _$CollectionEntityImpl(
      {this.id,
      required this.title,
      required this.password,
      this.status,
      required this.createdAt,
      required this.lastTransaction,
      required this.ownerId,
      this.thumbnailUrl});

  @override
  final int? id;
  @override
  final String title;
  @override
  final String password;
  @override
  final String? status;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastTransaction;
  @override
  final int ownerId;
  @override
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'CollectionEntity(id: $id, title: $title, password: $password, status: $status, createdAt: $createdAt, lastTransaction: $lastTransaction, ownerId: $ownerId, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, password, status,
      createdAt, lastTransaction, ownerId, thumbnailUrl);

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionEntityImplCopyWith<_$CollectionEntityImpl> get copyWith =>
      __$$CollectionEntityImplCopyWithImpl<_$CollectionEntityImpl>(
          this, _$identity);
}

abstract class _CollectionEntity implements CollectionEntity {
  const factory _CollectionEntity(
      {final int? id,
      required final String title,
      required final String password,
      final String? status,
      required final DateTime createdAt,
      required final DateTime lastTransaction,
      required final int ownerId,
      final String? thumbnailUrl}) = _$CollectionEntityImpl;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get password;
  @override
  String? get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastTransaction;
  @override
  int get ownerId;
  @override
  String? get thumbnailUrl;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionEntityImplCopyWith<_$CollectionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
