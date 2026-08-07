// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) {
  return _CategoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemModel {
  int? get id => throw _privateConstructorUsedError;
  CategoryItemStatus? get status => throw _privateConstructorUsedError;
  DateTime? get addedAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  int get adderId => throw _privateConstructorUsedError;
  int get collectionId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  /// Serializes this CategoryItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryItemModelCopyWith<CategoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemModelCopyWith<$Res> {
  factory $CategoryItemModelCopyWith(
          CategoryItemModel value, $Res Function(CategoryItemModel) then) =
      _$CategoryItemModelCopyWithImpl<$Res, CategoryItemModel>;
  @useResult
  $Res call(
      {int? id,
      CategoryItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int adderId,
      int collectionId,
      int categoryId});
}

/// @nodoc
class _$CategoryItemModelCopyWithImpl<$Res, $Val extends CategoryItemModel>
    implements $CategoryItemModelCopyWith<$Res> {
  _$CategoryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = null,
    Object? collectionId = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adderId: null == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemModelImplCopyWith<$Res>
    implements $CategoryItemModelCopyWith<$Res> {
  factory _$$CategoryItemModelImplCopyWith(_$CategoryItemModelImpl value,
          $Res Function(_$CategoryItemModelImpl) then) =
      __$$CategoryItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      CategoryItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int adderId,
      int collectionId,
      int categoryId});
}

/// @nodoc
class __$$CategoryItemModelImplCopyWithImpl<$Res>
    extends _$CategoryItemModelCopyWithImpl<$Res, _$CategoryItemModelImpl>
    implements _$$CategoryItemModelImplCopyWith<$Res> {
  __$$CategoryItemModelImplCopyWithImpl(_$CategoryItemModelImpl _value,
      $Res Function(_$CategoryItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = null,
    Object? collectionId = null,
    Object? categoryId = null,
  }) {
    return _then(_$CategoryItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adderId: null == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemModelImpl extends _CategoryItemModel {
  const _$CategoryItemModelImpl(
      {this.id,
      this.status,
      this.addedAt,
      this.lastTransaction,
      required this.adderId,
      required this.collectionId,
      required this.categoryId})
      : super._();

  factory _$CategoryItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final CategoryItemStatus? status;
  @override
  final DateTime? addedAt;
  @override
  final DateTime? lastTransaction;
  @override
  final int adderId;
  @override
  final int collectionId;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, status: $status, addedAt: $addedAt, lastTransaction: $lastTransaction, adderId: $adderId, collectionId: $collectionId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.adderId, adderId) || other.adderId == adderId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, addedAt,
      lastTransaction, adderId, collectionId, categoryId);

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      __$$CategoryItemModelImplCopyWithImpl<_$CategoryItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryItemModel extends CategoryItemModel {
  const factory _CategoryItemModel(
      {final int? id,
      final CategoryItemStatus? status,
      final DateTime? addedAt,
      final DateTime? lastTransaction,
      required final int adderId,
      required final int collectionId,
      required final int categoryId}) = _$CategoryItemModelImpl;
  const _CategoryItemModel._() : super._();

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$CategoryItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  CategoryItemStatus? get status;
  @override
  DateTime? get addedAt;
  @override
  DateTime? get lastTransaction;
  @override
  int get adderId;
  @override
  int get collectionId;
  @override
  int get categoryId;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
