// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscountEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int get percent => throw _privateConstructorUsedError;
  DiscountTargetType? get type => throw _privateConstructorUsedError;
  int? get targetId => throw _privateConstructorUsedError;
  int? get minOrderAmount => throw _privateConstructorUsedError;
  bool? get firstOrderOnly => throw _privateConstructorUsedError;
  DiscountStatus? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool? get userCreated => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  int? get maxUse => throw _privateConstructorUsedError;
  int? get usage => throw _privateConstructorUsedError;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountEntityCopyWith<DiscountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountEntityCopyWith<$Res> {
  factory $DiscountEntityCopyWith(
          DiscountEntity value, $Res Function(DiscountEntity) then) =
      _$DiscountEntityCopyWithImpl<$Res, DiscountEntity>;
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      String code,
      String? title,
      int? amount,
      int percent,
      DiscountTargetType? type,
      int? targetId,
      int? minOrderAmount,
      bool? firstOrderOnly,
      DiscountStatus? status,
      DateTime? createdAt,
      bool? userCreated,
      DateTime? expiresAt,
      int? maxUse,
      int? usage});
}

/// @nodoc
class _$DiscountEntityCopyWithImpl<$Res, $Val extends DiscountEntity>
    implements $DiscountEntityCopyWith<$Res> {
  _$DiscountEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? code = null,
    Object? title = freezed,
    Object? amount = freezed,
    Object? percent = null,
    Object? type = freezed,
    Object? targetId = freezed,
    Object? minOrderAmount = freezed,
    Object? firstOrderOnly = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? userCreated = freezed,
    Object? expiresAt = freezed,
    Object? maxUse = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiscountTargetType?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      minOrderAmount: freezed == minOrderAmount
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstOrderOnly: freezed == firstOrderOnly
          ? _value.firstOrderOnly
          : firstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscountStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userCreated: freezed == userCreated
          ? _value.userCreated
          : userCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUse: freezed == maxUse
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as int?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountEntityImplCopyWith<$Res>
    implements $DiscountEntityCopyWith<$Res> {
  factory _$$DiscountEntityImplCopyWith(_$DiscountEntityImpl value,
          $Res Function(_$DiscountEntityImpl) then) =
      __$$DiscountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      String code,
      String? title,
      int? amount,
      int percent,
      DiscountTargetType? type,
      int? targetId,
      int? minOrderAmount,
      bool? firstOrderOnly,
      DiscountStatus? status,
      DateTime? createdAt,
      bool? userCreated,
      DateTime? expiresAt,
      int? maxUse,
      int? usage});
}

/// @nodoc
class __$$DiscountEntityImplCopyWithImpl<$Res>
    extends _$DiscountEntityCopyWithImpl<$Res, _$DiscountEntityImpl>
    implements _$$DiscountEntityImplCopyWith<$Res> {
  __$$DiscountEntityImplCopyWithImpl(
      _$DiscountEntityImpl _value, $Res Function(_$DiscountEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? code = null,
    Object? title = freezed,
    Object? amount = freezed,
    Object? percent = null,
    Object? type = freezed,
    Object? targetId = freezed,
    Object? minOrderAmount = freezed,
    Object? firstOrderOnly = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? userCreated = freezed,
    Object? expiresAt = freezed,
    Object? maxUse = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$DiscountEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DiscountTargetType?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      minOrderAmount: freezed == minOrderAmount
          ? _value.minOrderAmount
          : minOrderAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstOrderOnly: freezed == firstOrderOnly
          ? _value.firstOrderOnly
          : firstOrderOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscountStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userCreated: freezed == userCreated
          ? _value.userCreated
          : userCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxUse: freezed == maxUse
          ? _value.maxUse
          : maxUse // ignore: cast_nullable_to_non_nullable
              as int?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$DiscountEntityImpl implements _DiscountEntity {
  const _$DiscountEntityImpl(
      {this.id,
      this.ownerId,
      required this.code,
      this.title,
      this.amount,
      required this.percent,
      this.type,
      this.targetId,
      this.minOrderAmount,
      this.firstOrderOnly,
      this.status,
      this.createdAt,
      this.userCreated,
      this.expiresAt,
      this.maxUse,
      this.usage});

  @override
  final int? id;
  @override
  final int? ownerId;
  @override
  final String code;
  @override
  final String? title;
  @override
  final int? amount;
  @override
  final int percent;
  @override
  final DiscountTargetType? type;
  @override
  final int? targetId;
  @override
  final int? minOrderAmount;
  @override
  final bool? firstOrderOnly;
  @override
  final DiscountStatus? status;
  @override
  final DateTime? createdAt;
  @override
  final bool? userCreated;
  @override
  final DateTime? expiresAt;
  @override
  final int? maxUse;
  @override
  final int? usage;

  @override
  String toString() {
    return 'DiscountEntity(id: $id, ownerId: $ownerId, code: $code, title: $title, amount: $amount, percent: $percent, type: $type, targetId: $targetId, minOrderAmount: $minOrderAmount, firstOrderOnly: $firstOrderOnly, status: $status, createdAt: $createdAt, userCreated: $userCreated, expiresAt: $expiresAt, maxUse: $maxUse, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.percent, percent) || other.percent == percent) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.minOrderAmount, minOrderAmount) ||
                other.minOrderAmount == minOrderAmount) &&
            (identical(other.firstOrderOnly, firstOrderOnly) ||
                other.firstOrderOnly == firstOrderOnly) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userCreated, userCreated) ||
                other.userCreated == userCreated) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUse, maxUse) || other.maxUse == maxUse) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      code,
      title,
      amount,
      percent,
      type,
      targetId,
      minOrderAmount,
      firstOrderOnly,
      status,
      createdAt,
      userCreated,
      expiresAt,
      maxUse,
      usage);

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountEntityImplCopyWith<_$DiscountEntityImpl> get copyWith =>
      __$$DiscountEntityImplCopyWithImpl<_$DiscountEntityImpl>(
          this, _$identity);
}

abstract class _DiscountEntity implements DiscountEntity {
  const factory _DiscountEntity(
      {final int? id,
      final int? ownerId,
      required final String code,
      final String? title,
      final int? amount,
      required final int percent,
      final DiscountTargetType? type,
      final int? targetId,
      final int? minOrderAmount,
      final bool? firstOrderOnly,
      final DiscountStatus? status,
      final DateTime? createdAt,
      final bool? userCreated,
      final DateTime? expiresAt,
      final int? maxUse,
      final int? usage}) = _$DiscountEntityImpl;

  @override
  int? get id;
  @override
  int? get ownerId;
  @override
  String get code;
  @override
  String? get title;
  @override
  int? get amount;
  @override
  int get percent;
  @override
  DiscountTargetType? get type;
  @override
  int? get targetId;
  @override
  int? get minOrderAmount;
  @override
  bool? get firstOrderOnly;
  @override
  DiscountStatus? get status;
  @override
  DateTime? get createdAt;
  @override
  bool? get userCreated;
  @override
  DateTime? get expiresAt;
  @override
  int? get maxUse;
  @override
  int? get usage;

  /// Create a copy of DiscountEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountEntityImplCopyWith<_$DiscountEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
