// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionModel _$CollectionModelFromJson(Map<String, dynamic> json) {
  return _CollectionModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionModel {
  int? get id => throw _privateConstructorUsedError;
  CollectionStatus? get status => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get uniqueCode => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CollectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionModelCopyWith<CollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionModelCopyWith<$Res> {
  factory $CollectionModelCopyWith(
          CollectionModel value, $Res Function(CollectionModel) then) =
      _$CollectionModelCopyWithImpl<$Res, CollectionModel>;
  @useResult
  $Res call(
      {int? id,
      CollectionStatus? status,
      String? thumbnailUrl,
      int? count,
      int? price,
      String? uniqueCode,
      DateTime? lastTransaction,
      int ownerId,
      DateTime? createdAt,
      String title});
}

/// @nodoc
class _$CollectionModelCopyWithImpl<$Res, $Val extends CollectionModel>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? thumbnailUrl = freezed,
    Object? count = freezed,
    Object? price = freezed,
    Object? uniqueCode = freezed,
    Object? lastTransaction = freezed,
    Object? ownerId = null,
    Object? createdAt = freezed,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionModelImplCopyWith<$Res>
    implements $CollectionModelCopyWith<$Res> {
  factory _$$CollectionModelImplCopyWith(_$CollectionModelImpl value,
          $Res Function(_$CollectionModelImpl) then) =
      __$$CollectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      CollectionStatus? status,
      String? thumbnailUrl,
      int? count,
      int? price,
      String? uniqueCode,
      DateTime? lastTransaction,
      int ownerId,
      DateTime? createdAt,
      String title});
}

/// @nodoc
class __$$CollectionModelImplCopyWithImpl<$Res>
    extends _$CollectionModelCopyWithImpl<$Res, _$CollectionModelImpl>
    implements _$$CollectionModelImplCopyWith<$Res> {
  __$$CollectionModelImplCopyWithImpl(
      _$CollectionModelImpl _value, $Res Function(_$CollectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? thumbnailUrl = freezed,
    Object? count = freezed,
    Object? price = freezed,
    Object? uniqueCode = freezed,
    Object? lastTransaction = freezed,
    Object? ownerId = null,
    Object? createdAt = freezed,
    Object? title = null,
  }) {
    return _then(_$CollectionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueCode: freezed == uniqueCode
          ? _value.uniqueCode
          : uniqueCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionModelImpl extends _CollectionModel {
  const _$CollectionModelImpl(
      {this.id,
      this.status,
      this.thumbnailUrl,
      this.count,
      this.price,
      this.uniqueCode,
      this.lastTransaction,
      required this.ownerId,
      this.createdAt,
      required this.title})
      : super._();

  factory _$CollectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final CollectionStatus? status;
  @override
  final String? thumbnailUrl;
  @override
  final int? count;
  @override
  final int? price;
  @override
  final String? uniqueCode;
  @override
  final DateTime? lastTransaction;
  @override
  final int ownerId;
  @override
  final DateTime? createdAt;
  @override
  final String title;

  @override
  String toString() {
    return 'CollectionModel(id: $id, status: $status, thumbnailUrl: $thumbnailUrl, count: $count, price: $price, uniqueCode: $uniqueCode, lastTransaction: $lastTransaction, ownerId: $ownerId, createdAt: $createdAt, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.uniqueCode, uniqueCode) ||
                other.uniqueCode == uniqueCode) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, thumbnailUrl, count,
      price, uniqueCode, lastTransaction, ownerId, createdAt, title);

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionModelImplCopyWith<_$CollectionModelImpl> get copyWith =>
      __$$CollectionModelImplCopyWithImpl<_$CollectionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionModelImplToJson(
      this,
    );
  }
}

abstract class _CollectionModel extends CollectionModel {
  const factory _CollectionModel(
      {final int? id,
      final CollectionStatus? status,
      final String? thumbnailUrl,
      final int? count,
      final int? price,
      final String? uniqueCode,
      final DateTime? lastTransaction,
      required final int ownerId,
      final DateTime? createdAt,
      required final String title}) = _$CollectionModelImpl;
  const _CollectionModel._() : super._();

  factory _CollectionModel.fromJson(Map<String, dynamic> json) =
      _$CollectionModelImpl.fromJson;

  @override
  int? get id;
  @override
  CollectionStatus? get status;
  @override
  String? get thumbnailUrl;
  @override
  int? get count;
  @override
  int? get price;
  @override
  String? get uniqueCode;
  @override
  DateTime? get lastTransaction;
  @override
  int get ownerId;
  @override
  DateTime? get createdAt;
  @override
  String get title;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionModelImplCopyWith<_$CollectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
