// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get parent => throw _privateConstructorUsedError;
  CategoryType get type => throw _privateConstructorUsedError;
  double? get avgRate => throw _privateConstructorUsedError;
  int? get rageCount => throw _privateConstructorUsedError;
  CategoryStatus? get status => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryEntityCopyWith<CategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntityCopyWith<$Res> {
  factory $CategoryEntityCopyWith(
          CategoryEntity value, $Res Function(CategoryEntity) then) =
      _$CategoryEntityCopyWithImpl<$Res, CategoryEntity>;
  @useResult
  $Res call(
      {int? id,
      int? parent,
      CategoryType type,
      double? avgRate,
      int? rageCount,
      CategoryStatus? status,
      String? thumbnailUrl,
      DateTime? createdAt,
      DateTime? lastTransaction,
      String title,
      String description,
      int? ownerId});
}

/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res, $Val extends CategoryEntity>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent = freezed,
    Object? type = null,
    Object? avgRate = freezed,
    Object? rageCount = freezed,
    Object? status = freezed,
    Object? thumbnailUrl = freezed,
    Object? createdAt = freezed,
    Object? lastTransaction = freezed,
    Object? title = null,
    Object? description = null,
    Object? ownerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rageCount: freezed == rageCount
          ? _value.rageCount
          : rageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryStatus?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntityImplCopyWith<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  factory _$$CategoryEntityImplCopyWith(_$CategoryEntityImpl value,
          $Res Function(_$CategoryEntityImpl) then) =
      __$$CategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? parent,
      CategoryType type,
      double? avgRate,
      int? rageCount,
      CategoryStatus? status,
      String? thumbnailUrl,
      DateTime? createdAt,
      DateTime? lastTransaction,
      String title,
      String description,
      int? ownerId});
}

/// @nodoc
class __$$CategoryEntityImplCopyWithImpl<$Res>
    extends _$CategoryEntityCopyWithImpl<$Res, _$CategoryEntityImpl>
    implements _$$CategoryEntityImplCopyWith<$Res> {
  __$$CategoryEntityImplCopyWithImpl(
      _$CategoryEntityImpl _value, $Res Function(_$CategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent = freezed,
    Object? type = null,
    Object? avgRate = freezed,
    Object? rageCount = freezed,
    Object? status = freezed,
    Object? thumbnailUrl = freezed,
    Object? createdAt = freezed,
    Object? lastTransaction = freezed,
    Object? title = null,
    Object? description = null,
    Object? ownerId = freezed,
  }) {
    return _then(_$CategoryEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CategoryType,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rageCount: freezed == rageCount
          ? _value.rageCount
          : rageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryStatus?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CategoryEntityImpl implements _CategoryEntity {
  const _$CategoryEntityImpl(
      {this.id,
      this.parent,
      required this.type,
      this.avgRate,
      this.rageCount,
      this.status,
      this.thumbnailUrl,
      this.createdAt,
      this.lastTransaction,
      required this.title,
      required this.description,
      this.ownerId});

  @override
  final int? id;
  @override
  final int? parent;
  @override
  final CategoryType type;
  @override
  final double? avgRate;
  @override
  final int? rageCount;
  @override
  final CategoryStatus? status;
  @override
  final String? thumbnailUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? lastTransaction;
  @override
  final String title;
  @override
  final String description;
  @override
  final int? ownerId;

  @override
  String toString() {
    return 'CategoryEntity(id: $id, parent: $parent, type: $type, avgRate: $avgRate, rageCount: $rageCount, status: $status, thumbnailUrl: $thumbnailUrl, createdAt: $createdAt, lastTransaction: $lastTransaction, title: $title, description: $description, ownerId: $ownerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate) &&
            (identical(other.rageCount, rageCount) ||
                other.rageCount == rageCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parent,
      type,
      avgRate,
      rageCount,
      status,
      thumbnailUrl,
      createdAt,
      lastTransaction,
      title,
      description,
      ownerId);

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      __$$CategoryEntityImplCopyWithImpl<_$CategoryEntityImpl>(
          this, _$identity);
}

abstract class _CategoryEntity implements CategoryEntity {
  const factory _CategoryEntity(
      {final int? id,
      final int? parent,
      required final CategoryType type,
      final double? avgRate,
      final int? rageCount,
      final CategoryStatus? status,
      final String? thumbnailUrl,
      final DateTime? createdAt,
      final DateTime? lastTransaction,
      required final String title,
      required final String description,
      final int? ownerId}) = _$CategoryEntityImpl;

  @override
  int? get id;
  @override
  int? get parent;
  @override
  CategoryType get type;
  @override
  double? get avgRate;
  @override
  int? get rageCount;
  @override
  CategoryStatus? get status;
  @override
  String? get thumbnailUrl;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get lastTransaction;
  @override
  String get title;
  @override
  String get description;
  @override
  int? get ownerId;

  /// Create a copy of CategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryEntityImplCopyWith<_$CategoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
