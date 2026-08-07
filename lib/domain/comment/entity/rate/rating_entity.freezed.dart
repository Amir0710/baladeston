// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RatingEntity {
  CommentType get targetType => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingEntityCopyWith<RatingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEntityCopyWith<$Res> {
  factory $RatingEntityCopyWith(
          RatingEntity value, $Res Function(RatingEntity) then) =
      _$RatingEntityCopyWithImpl<$Res, RatingEntity>;
  @useResult
  $Res call(
      {CommentType targetType,
      int targetId,
      double averageRating,
      int totalCount});
}

/// @nodoc
class _$RatingEntityCopyWithImpl<$Res, $Val extends RatingEntity>
    implements $RatingEntityCopyWith<$Res> {
  _$RatingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetType = null,
    Object? targetId = null,
    Object? averageRating = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingEntityImplCopyWith<$Res>
    implements $RatingEntityCopyWith<$Res> {
  factory _$$RatingEntityImplCopyWith(
          _$RatingEntityImpl value, $Res Function(_$RatingEntityImpl) then) =
      __$$RatingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommentType targetType,
      int targetId,
      double averageRating,
      int totalCount});
}

/// @nodoc
class __$$RatingEntityImplCopyWithImpl<$Res>
    extends _$RatingEntityCopyWithImpl<$Res, _$RatingEntityImpl>
    implements _$$RatingEntityImplCopyWith<$Res> {
  __$$RatingEntityImplCopyWithImpl(
      _$RatingEntityImpl _value, $Res Function(_$RatingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetType = null,
    Object? targetId = null,
    Object? averageRating = null,
    Object? totalCount = null,
  }) {
    return _then(_$RatingEntityImpl(
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RatingEntityImpl implements _RatingEntity {
  const _$RatingEntityImpl(
      {required this.targetType,
      required this.targetId,
      required this.averageRating,
      required this.totalCount});

  @override
  final CommentType targetType;
  @override
  final int targetId;
  @override
  final double averageRating;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'RatingEntity(targetType: $targetType, targetId: $targetId, averageRating: $averageRating, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingEntityImpl &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, targetType, targetId, averageRating, totalCount);

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      __$$RatingEntityImplCopyWithImpl<_$RatingEntityImpl>(this, _$identity);
}

abstract class _RatingEntity implements RatingEntity {
  const factory _RatingEntity(
      {required final CommentType targetType,
      required final int targetId,
      required final double averageRating,
      required final int totalCount}) = _$RatingEntityImpl;

  @override
  CommentType get targetType;
  @override
  int get targetId;
  @override
  double get averageRating;
  @override
  int get totalCount;

  /// Create a copy of RatingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingEntityImplCopyWith<_$RatingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
