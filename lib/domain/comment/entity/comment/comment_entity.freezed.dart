// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentEntity {
  int? get ownerId => throw _privateConstructorUsedError;
  CommentType get targetType => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  CommentStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {int? ownerId,
      CommentType targetType,
      int targetId,
      double rating,
      String? content,
      DateTime? createdAt,
      DateTime? updatedAt,
      CommentStatus? status});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? targetType = null,
    Object? targetId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEntityImplCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$CommentEntityImplCopyWith(
          _$CommentEntityImpl value, $Res Function(_$CommentEntityImpl) then) =
      __$$CommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ownerId,
      CommentType targetType,
      int targetId,
      double rating,
      String? content,
      DateTime? createdAt,
      DateTime? updatedAt,
      CommentStatus? status});
}

/// @nodoc
class __$$CommentEntityImplCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$CommentEntityImpl>
    implements _$$CommentEntityImplCopyWith<$Res> {
  __$$CommentEntityImplCopyWithImpl(
      _$CommentEntityImpl _value, $Res Function(_$CommentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? targetType = null,
    Object? targetId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CommentEntityImpl(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus?,
    ));
  }
}

/// @nodoc

class _$CommentEntityImpl implements _CommentEntity {
  const _$CommentEntityImpl(
      {this.ownerId,
      required this.targetType,
      required this.targetId,
      required this.rating,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.status});

  @override
  final int? ownerId;
  @override
  final CommentType targetType;
  @override
  final int targetId;
  @override
  final double rating;
  @override
  final String? content;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final CommentStatus? status;

  @override
  String toString() {
    return 'CommentEntity(ownerId: $ownerId, targetType: $targetType, targetId: $targetId, rating: $rating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntityImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ownerId, targetType, targetId,
      rating, content, createdAt, updatedAt, status);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      __$$CommentEntityImplCopyWithImpl<_$CommentEntityImpl>(this, _$identity);
}

abstract class _CommentEntity implements CommentEntity {
  const factory _CommentEntity(
      {final int? ownerId,
      required final CommentType targetType,
      required final int targetId,
      required final double rating,
      final String? content,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final CommentStatus? status}) = _$CommentEntityImpl;

  @override
  int? get ownerId;
  @override
  CommentType get targetType;
  @override
  int get targetId;
  @override
  double get rating;
  @override
  String? get content;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  CommentStatus? get status;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
