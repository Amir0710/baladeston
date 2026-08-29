// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectionItemEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int get collectionId => throw _privateConstructorUsedError;
  double? get avgRate => throw _privateConstructorUsedError;
  int? get rateCount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  CollectionItemStatus? get status => throw _privateConstructorUsedError;
  DateTime? get addedAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  int? get adderId => throw _privateConstructorUsedError;

  /// Create a copy of CollectionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionItemEntityCopyWith<CollectionItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionItemEntityCopyWith<$Res> {
  factory $CollectionItemEntityCopyWith(CollectionItemEntity value,
          $Res Function(CollectionItemEntity) then) =
      _$CollectionItemEntityCopyWithImpl<$Res, CollectionItemEntity>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int videoId,
      int collectionId,
      double? avgRate,
      int? rateCount,
      int? price,
      String? thumbnailUrl,
      CollectionItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int? adderId});
}

/// @nodoc
class _$CollectionItemEntityCopyWithImpl<$Res,
        $Val extends CollectionItemEntity>
    implements $CollectionItemEntityCopyWith<$Res> {
  _$CollectionItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoId = null,
    Object? collectionId = null,
    Object? avgRate = freezed,
    Object? rateCount = freezed,
    Object? price = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
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
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rateCount: freezed == rateCount
          ? _value.rateCount
          : rateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionItemStatus?,
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
abstract class _$$CollectionItemEntityImplCopyWith<$Res>
    implements $CollectionItemEntityCopyWith<$Res> {
  factory _$$CollectionItemEntityImplCopyWith(_$CollectionItemEntityImpl value,
          $Res Function(_$CollectionItemEntityImpl) then) =
      __$$CollectionItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int videoId,
      int collectionId,
      double? avgRate,
      int? rateCount,
      int? price,
      String? thumbnailUrl,
      CollectionItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int? adderId});
}

/// @nodoc
class __$$CollectionItemEntityImplCopyWithImpl<$Res>
    extends _$CollectionItemEntityCopyWithImpl<$Res, _$CollectionItemEntityImpl>
    implements _$$CollectionItemEntityImplCopyWith<$Res> {
  __$$CollectionItemEntityImplCopyWithImpl(_$CollectionItemEntityImpl _value,
      $Res Function(_$CollectionItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoId = null,
    Object? collectionId = null,
    Object? avgRate = freezed,
    Object? rateCount = freezed,
    Object? price = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = freezed,
  }) {
    return _then(_$CollectionItemEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rateCount: freezed == rateCount
          ? _value.rateCount
          : rateCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionItemStatus?,
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

class _$CollectionItemEntityImpl implements _CollectionItemEntity {
  const _$CollectionItemEntityImpl(
      {this.id,
      this.title,
      required this.videoId,
      required this.collectionId,
      this.avgRate,
      this.rateCount,
      this.price,
      this.thumbnailUrl,
      this.status,
      this.addedAt,
      this.lastTransaction,
      this.adderId});

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int videoId;
  @override
  final int collectionId;
  @override
  final double? avgRate;
  @override
  final int? rateCount;
  @override
  final int? price;
  @override
  final String? thumbnailUrl;
  @override
  final CollectionItemStatus? status;
  @override
  final DateTime? addedAt;
  @override
  final DateTime? lastTransaction;
  @override
  final int? adderId;

  @override
  String toString() {
    return 'CollectionItemEntity(id: $id, title: $title, videoId: $videoId, collectionId: $collectionId, avgRate: $avgRate, rateCount: $rateCount, price: $price, thumbnailUrl: $thumbnailUrl, status: $status, addedAt: $addedAt, lastTransaction: $lastTransaction, adderId: $adderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate) &&
            (identical(other.rateCount, rateCount) ||
                other.rateCount == rateCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.adderId, adderId) || other.adderId == adderId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      videoId,
      collectionId,
      avgRate,
      rateCount,
      price,
      thumbnailUrl,
      status,
      addedAt,
      lastTransaction,
      adderId);

  /// Create a copy of CollectionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionItemEntityImplCopyWith<_$CollectionItemEntityImpl>
      get copyWith =>
          __$$CollectionItemEntityImplCopyWithImpl<_$CollectionItemEntityImpl>(
              this, _$identity);
}

abstract class _CollectionItemEntity implements CollectionItemEntity {
  const factory _CollectionItemEntity(
      {final int? id,
      final String? title,
      required final int videoId,
      required final int collectionId,
      final double? avgRate,
      final int? rateCount,
      final int? price,
      final String? thumbnailUrl,
      final CollectionItemStatus? status,
      final DateTime? addedAt,
      final DateTime? lastTransaction,
      final int? adderId}) = _$CollectionItemEntityImpl;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int get videoId;
  @override
  int get collectionId;
  @override
  double? get avgRate;
  @override
  int? get rateCount;
  @override
  int? get price;
  @override
  String? get thumbnailUrl;
  @override
  CollectionItemStatus? get status;
  @override
  DateTime? get addedAt;
  @override
  DateTime? get lastTransaction;
  @override
  int? get adderId;

  /// Create a copy of CollectionItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionItemEntityImplCopyWith<_$CollectionItemEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
