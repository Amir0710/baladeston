// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReactionEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  DateTime? get interestedIn => throw _privateConstructorUsedError;
  ReactionType get reactionType => throw _privateConstructorUsedError;
  TargetType get targetType => throw _privateConstructorUsedError;

  /// Create a copy of ReactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionEntityCopyWith<ReactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionEntityCopyWith<$Res> {
  factory $ReactionEntityCopyWith(
          ReactionEntity value, $Res Function(ReactionEntity) then) =
      _$ReactionEntityCopyWithImpl<$Res, ReactionEntity>;
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      int targetId,
      DateTime? interestedIn,
      ReactionType reactionType,
      TargetType targetType});
}

/// @nodoc
class _$ReactionEntityCopyWithImpl<$Res, $Val extends ReactionEntity>
    implements $ReactionEntityCopyWith<$Res> {
  _$ReactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? targetId = null,
    Object? interestedIn = freezed,
    Object? reactionType = null,
    Object? targetType = null,
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
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reactionType: null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionEntityImplCopyWith<$Res>
    implements $ReactionEntityCopyWith<$Res> {
  factory _$$ReactionEntityImplCopyWith(_$ReactionEntityImpl value,
          $Res Function(_$ReactionEntityImpl) then) =
      __$$ReactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      int targetId,
      DateTime? interestedIn,
      ReactionType reactionType,
      TargetType targetType});
}

/// @nodoc
class __$$ReactionEntityImplCopyWithImpl<$Res>
    extends _$ReactionEntityCopyWithImpl<$Res, _$ReactionEntityImpl>
    implements _$$ReactionEntityImplCopyWith<$Res> {
  __$$ReactionEntityImplCopyWithImpl(
      _$ReactionEntityImpl _value, $Res Function(_$ReactionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? targetId = null,
    Object? interestedIn = freezed,
    Object? reactionType = null,
    Object? targetType = null,
  }) {
    return _then(_$ReactionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reactionType: null == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType,
    ));
  }
}

/// @nodoc

class _$ReactionEntityImpl implements _ReactionEntity {
  const _$ReactionEntityImpl(
      {this.id,
      this.ownerId,
      required this.targetId,
      this.interestedIn,
      required this.reactionType,
      required this.targetType});

  @override
  final int? id;
  @override
  final int? ownerId;
  @override
  final int targetId;
  @override
  final DateTime? interestedIn;
  @override
  final ReactionType reactionType;
  @override
  final TargetType targetType;

  @override
  String toString() {
    return 'ReactionEntity(id: $id, ownerId: $ownerId, targetId: $targetId, interestedIn: $interestedIn, reactionType: $reactionType, targetType: $targetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.interestedIn, interestedIn) ||
                other.interestedIn == interestedIn) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, targetId,
      interestedIn, reactionType, targetType);

  /// Create a copy of ReactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionEntityImplCopyWith<_$ReactionEntityImpl> get copyWith =>
      __$$ReactionEntityImplCopyWithImpl<_$ReactionEntityImpl>(
          this, _$identity);
}

abstract class _ReactionEntity implements ReactionEntity {
  const factory _ReactionEntity(
      {final int? id,
      final int? ownerId,
      required final int targetId,
      final DateTime? interestedIn,
      required final ReactionType reactionType,
      required final TargetType targetType}) = _$ReactionEntityImpl;

  @override
  int? get id;
  @override
  int? get ownerId;
  @override
  int get targetId;
  @override
  DateTime? get interestedIn;
  @override
  ReactionType get reactionType;
  @override
  TargetType get targetType;

  /// Create a copy of ReactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionEntityImplCopyWith<_$ReactionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
