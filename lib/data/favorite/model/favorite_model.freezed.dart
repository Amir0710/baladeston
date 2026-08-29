// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  int? get id => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;
  DateTime? get interestedIn => throw _privateConstructorUsedError;
  FavoriteType get favoriteType => throw _privateConstructorUsedError;
  TargetType get targetType => throw _privateConstructorUsedError;

  /// Serializes this FavoriteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res, FavoriteModel>;
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      int targetId,
      DateTime? interestedIn,
      FavoriteType favoriteType,
      TargetType targetType});
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res, $Val extends FavoriteModel>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? targetId = null,
    Object? interestedIn = freezed,
    Object? favoriteType = null,
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
      favoriteType: null == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteModelImplCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$$FavoriteModelImplCopyWith(
          _$FavoriteModelImpl value, $Res Function(_$FavoriteModelImpl) then) =
      __$$FavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? ownerId,
      int targetId,
      DateTime? interestedIn,
      FavoriteType favoriteType,
      TargetType targetType});
}

/// @nodoc
class __$$FavoriteModelImplCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res, _$FavoriteModelImpl>
    implements _$$FavoriteModelImplCopyWith<$Res> {
  __$$FavoriteModelImplCopyWithImpl(
      _$FavoriteModelImpl _value, $Res Function(_$FavoriteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? targetId = null,
    Object? interestedIn = freezed,
    Object? favoriteType = null,
    Object? targetType = null,
  }) {
    return _then(_$FavoriteModelImpl(
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
      favoriteType: null == favoriteType
          ? _value.favoriteType
          : favoriteType // ignore: cast_nullable_to_non_nullable
              as FavoriteType,
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteModelImpl implements _FavoriteModel {
  const _$FavoriteModelImpl(
      {this.id,
      this.ownerId,
      required this.targetId,
      this.interestedIn,
      required this.favoriteType,
      required this.targetType});

  factory _$FavoriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? ownerId;
  @override
  final int targetId;
  @override
  final DateTime? interestedIn;
  @override
  final FavoriteType favoriteType;
  @override
  final TargetType targetType;

  @override
  String toString() {
    return 'FavoriteModel(id: $id, ownerId: $ownerId, targetId: $targetId, interestedIn: $interestedIn, favoriteType: $favoriteType, targetType: $targetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.interestedIn, interestedIn) ||
                other.interestedIn == interestedIn) &&
            (identical(other.favoriteType, favoriteType) ||
                other.favoriteType == favoriteType) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, targetId,
      interestedIn, favoriteType, targetType);

  /// Create a copy of FavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      __$$FavoriteModelImplCopyWithImpl<_$FavoriteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteModelImplToJson(
      this,
    );
  }
}

abstract class _FavoriteModel implements FavoriteModel {
  const factory _FavoriteModel(
      {final int? id,
      final int? ownerId,
      required final int targetId,
      final DateTime? interestedIn,
      required final FavoriteType favoriteType,
      required final TargetType targetType}) = _$FavoriteModelImpl;

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get ownerId;
  @override
  int get targetId;
  @override
  DateTime? get interestedIn;
  @override
  FavoriteType get favoriteType;
  @override
  TargetType get targetType;

  /// Create a copy of FavoriteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
