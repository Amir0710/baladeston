// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEntity {
  int? get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  DateTime? get interestedIn => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteEntityCopyWith<FavoriteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEntityCopyWith<$Res> {
  factory $FavoriteEntityCopyWith(
          FavoriteEntity value, $Res Function(FavoriteEntity) then) =
      _$FavoriteEntityCopyWithImpl<$Res, FavoriteEntity>;
  @useResult
  $Res call(
      {int? id, int userId, String type, int targetId, DateTime? interestedIn});
}

/// @nodoc
class _$FavoriteEntityCopyWithImpl<$Res, $Val extends FavoriteEntity>
    implements $FavoriteEntityCopyWith<$Res> {
  _$FavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? type = null,
    Object? targetId = null,
    Object? interestedIn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteEntityImplCopyWith<$Res>
    implements $FavoriteEntityCopyWith<$Res> {
  factory _$$FavoriteEntityImplCopyWith(_$FavoriteEntityImpl value,
          $Res Function(_$FavoriteEntityImpl) then) =
      __$$FavoriteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int userId, String type, int targetId, DateTime? interestedIn});
}

/// @nodoc
class __$$FavoriteEntityImplCopyWithImpl<$Res>
    extends _$FavoriteEntityCopyWithImpl<$Res, _$FavoriteEntityImpl>
    implements _$$FavoriteEntityImplCopyWith<$Res> {
  __$$FavoriteEntityImplCopyWithImpl(
      _$FavoriteEntityImpl _value, $Res Function(_$FavoriteEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? type = null,
    Object? targetId = null,
    Object? interestedIn = freezed,
  }) {
    return _then(_$FavoriteEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FavoriteEntityImpl implements _FavoriteEntity {
  const _$FavoriteEntityImpl(
      {required this.id,
      required this.userId,
      required this.type,
      required this.targetId,
      required this.interestedIn});

  @override
  final int? id;
  @override
  final int userId;
  @override
  final String type;
  @override
  final int targetId;
  @override
  final DateTime? interestedIn;

  @override
  String toString() {
    return 'FavoriteEntity(id: $id, userId: $userId, type: $type, targetId: $targetId, interestedIn: $interestedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.interestedIn, interestedIn) ||
                other.interestedIn == interestedIn));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, type, targetId, interestedIn);

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      __$$FavoriteEntityImplCopyWithImpl<_$FavoriteEntityImpl>(
          this, _$identity);
}

abstract class _FavoriteEntity implements FavoriteEntity {
  const factory _FavoriteEntity(
      {required final int? id,
      required final int userId,
      required final String type,
      required final int targetId,
      required final DateTime? interestedIn}) = _$FavoriteEntityImpl;

  @override
  int? get id;
  @override
  int get userId;
  @override
  String get type;
  @override
  int get targetId;
  @override
  DateTime? get interestedIn;

  /// Create a copy of FavoriteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
