// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionItemModel _$CollectionItemModelFromJson(Map<String, dynamic> json) {
  return _CollectionItemModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionItemModel {
  int? get id => throw _privateConstructorUsedError;
  CollectionItemStatus? get status => throw _privateConstructorUsedError;
  DateTime? get addedAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  int get adderId => throw _privateConstructorUsedError;
  int get videoId => throw _privateConstructorUsedError;
  int get collectionId => throw _privateConstructorUsedError;

  /// Serializes this CollectionItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionItemModelCopyWith<CollectionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionItemModelCopyWith<$Res> {
  factory $CollectionItemModelCopyWith(
          CollectionItemModel value, $Res Function(CollectionItemModel) then) =
      _$CollectionItemModelCopyWithImpl<$Res, CollectionItemModel>;
  @useResult
  $Res call(
      {int? id,
      CollectionItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int adderId,
      int videoId,
      int collectionId});
}

/// @nodoc
class _$CollectionItemModelCopyWithImpl<$Res, $Val extends CollectionItemModel>
    implements $CollectionItemModelCopyWith<$Res> {
  _$CollectionItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = null,
    Object? videoId = null,
    Object? collectionId = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      adderId: null == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionItemModelImplCopyWith<$Res>
    implements $CollectionItemModelCopyWith<$Res> {
  factory _$$CollectionItemModelImplCopyWith(_$CollectionItemModelImpl value,
          $Res Function(_$CollectionItemModelImpl) then) =
      __$$CollectionItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      CollectionItemStatus? status,
      DateTime? addedAt,
      DateTime? lastTransaction,
      int adderId,
      int videoId,
      int collectionId});
}

/// @nodoc
class __$$CollectionItemModelImplCopyWithImpl<$Res>
    extends _$CollectionItemModelCopyWithImpl<$Res, _$CollectionItemModelImpl>
    implements _$$CollectionItemModelImplCopyWith<$Res> {
  __$$CollectionItemModelImplCopyWithImpl(_$CollectionItemModelImpl _value,
      $Res Function(_$CollectionItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? addedAt = freezed,
    Object? lastTransaction = freezed,
    Object? adderId = null,
    Object? videoId = null,
    Object? collectionId = null,
  }) {
    return _then(_$CollectionItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      adderId: null == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionItemModelImpl extends _CollectionItemModel {
  const _$CollectionItemModelImpl(
      {this.id,
      this.status,
      this.addedAt,
      this.lastTransaction,
      required this.adderId,
      required this.videoId,
      required this.collectionId})
      : super._();

  factory _$CollectionItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final CollectionItemStatus? status;
  @override
  final DateTime? addedAt;
  @override
  final DateTime? lastTransaction;
  @override
  final int adderId;
  @override
  final int videoId;
  @override
  final int collectionId;

  @override
  String toString() {
    return 'CollectionItemModel(id: $id, status: $status, addedAt: $addedAt, lastTransaction: $lastTransaction, adderId: $adderId, videoId: $videoId, collectionId: $collectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.adderId, adderId) || other.adderId == adderId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, addedAt,
      lastTransaction, adderId, videoId, collectionId);

  /// Create a copy of CollectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionItemModelImplCopyWith<_$CollectionItemModelImpl> get copyWith =>
      __$$CollectionItemModelImplCopyWithImpl<_$CollectionItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionItemModelImplToJson(
      this,
    );
  }
}

abstract class _CollectionItemModel extends CollectionItemModel {
  const factory _CollectionItemModel(
      {final int? id,
      final CollectionItemStatus? status,
      final DateTime? addedAt,
      final DateTime? lastTransaction,
      required final int adderId,
      required final int videoId,
      required final int collectionId}) = _$CollectionItemModelImpl;
  const _CollectionItemModel._() : super._();

  factory _CollectionItemModel.fromJson(Map<String, dynamic> json) =
      _$CollectionItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  CollectionItemStatus? get status;
  @override
  DateTime? get addedAt;
  @override
  DateTime? get lastTransaction;
  @override
  int get adderId;
  @override
  int get videoId;
  @override
  int get collectionId;

  /// Create a copy of CollectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionItemModelImplCopyWith<_$CollectionItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
