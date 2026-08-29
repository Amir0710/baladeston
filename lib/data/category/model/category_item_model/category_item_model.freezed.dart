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
  String? get title => throw _privateConstructorUsedError;
  int get collectionId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  double? get avgRate => throw _privateConstructorUsedError;
  int? get rageCount => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  CategoryItemStatus? get status => throw _privateConstructorUsedError;
  int? get count =>
      throw _privateConstructorUsedError; // for preview from collection
  int? get price =>
      throw _privateConstructorUsedError; // for preview from collection
  DateTime? get addedAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  int? get adderId => throw _privateConstructorUsedError;

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
      String? title,
      int collectionId,
      int categoryId,
      double? avgRate,
      int? rageCount,
      String? thumbnailUrl,
      CategoryItemStatus? status,
      int? count,
      int? price,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int? adderId});
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
    Object? title = freezed,
    Object? collectionId = null,
    Object? categoryId = null,
    Object? avgRate = freezed,
    Object? rageCount = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
    Object? count = freezed,
    Object? price = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rageCount: freezed == rageCount
          ? _value.rageCount
          : rageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      String? title,
      int collectionId,
      int categoryId,
      double? avgRate,
      int? rageCount,
      String? thumbnailUrl,
      CategoryItemStatus? status,
      int? count,
      int? price,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int? adderId});
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
    Object? title = freezed,
    Object? collectionId = null,
    Object? categoryId = null,
    Object? avgRate = freezed,
    Object? rageCount = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
    Object? count = freezed,
    Object? price = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = freezed,
  }) {
    return _then(_$CategoryItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rageCount: freezed == rageCount
          ? _value.rageCount
          : rageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemModelImpl extends _CategoryItemModel {
  const _$CategoryItemModelImpl(
      {this.id,
      this.title,
      required this.collectionId,
      required this.categoryId,
      this.avgRate,
      this.rageCount,
      this.thumbnailUrl,
      this.status,
      this.count,
      this.price,
      this.addedAt,
      this.lastTransaction,
      this.adderId})
      : super._();

  factory _$CategoryItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int collectionId;
  @override
  final int categoryId;
  @override
  final double? avgRate;
  @override
  final int? rageCount;
  @override
  final String? thumbnailUrl;
  @override
  final CategoryItemStatus? status;
  @override
  final int? count;
// for preview from collection
  @override
  final int? price;
// for preview from collection
  @override
  final DateTime? addedAt;
  @override
  final DateTime? lastTransaction;
  @override
  final int? adderId;

  @override
  String toString() {
    return 'CategoryItemModel(id: $id, title: $title, collectionId: $collectionId, categoryId: $categoryId, avgRate: $avgRate, rageCount: $rageCount, thumbnailUrl: $thumbnailUrl, status: $status, count: $count, price: $price, addedAt: $addedAt, lastTransaction: $lastTransaction, adderId: $adderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate) &&
            (identical(other.rageCount, rageCount) ||
                other.rageCount == rageCount) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.adderId, adderId) || other.adderId == adderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      collectionId,
      categoryId,
      avgRate,
      rageCount,
      thumbnailUrl,
      status,
      count,
      price,
      addedAt,
      lastTransaction,
      adderId);

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
      final String? title,
      required final int collectionId,
      required final int categoryId,
      final double? avgRate,
      final int? rageCount,
      final String? thumbnailUrl,
      final CategoryItemStatus? status,
      final int? count,
      final int? price,
      final DateTime? addedAt,
      final DateTime? lastTransaction,
      final int? adderId}) = _$CategoryItemModelImpl;
  const _CategoryItemModel._() : super._();

  factory _CategoryItemModel.fromJson(Map<String, dynamic> json) =
      _$CategoryItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int get collectionId;
  @override
  int get categoryId;
  @override
  double? get avgRate;
  @override
  int? get rageCount;
  @override
  String? get thumbnailUrl;
  @override
  CategoryItemStatus? get status;
  @override
  int? get count; // for preview from collection
  @override
  int? get price; // for preview from collection
  @override
  DateTime? get addedAt;
  @override
  DateTime? get lastTransaction;
  @override
  int? get adderId;

  /// Create a copy of CategoryItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryItemModelImplCopyWith<_$CategoryItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
