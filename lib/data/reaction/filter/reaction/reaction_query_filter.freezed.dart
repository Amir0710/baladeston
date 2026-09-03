// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionQueryFilter _$ReactionQueryFilterFromJson(Map<String, dynamic> json) {
  return _ReactionQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$ReactionQueryFilter {
  List<int>? get ids => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get toggleId => throw _privateConstructorUsedError;
  DateTime? get interestedIn => throw _privateConstructorUsedError;
  ReactionType? get reactionType => throw _privateConstructorUsedError;
  TargetType? get targetType => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  ReactionOrder get orderBy => throw _privateConstructorUsedError;

  /// Serializes this ReactionQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionQueryFilterCopyWith<ReactionQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionQueryFilterCopyWith<$Res> {
  factory $ReactionQueryFilterCopyWith(
          ReactionQueryFilter value, $Res Function(ReactionQueryFilter) then) =
      _$ReactionQueryFilterCopyWithImpl<$Res, ReactionQueryFilter>;
  @useResult
  $Res call(
      {List<int>? ids,
      int? userId,
      int? toggleId,
      DateTime? interestedIn,
      ReactionType? reactionType,
      TargetType? targetType,
      bool ascending,
      int limit,
      int offset,
      ReactionOrder orderBy});
}

/// @nodoc
class _$ReactionQueryFilterCopyWithImpl<$Res, $Val extends ReactionQueryFilter>
    implements $ReactionQueryFilterCopyWith<$Res> {
  _$ReactionQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? userId = freezed,
    Object? toggleId = freezed,
    Object? interestedIn = freezed,
    Object? reactionType = freezed,
    Object? targetType = freezed,
    Object? ascending = null,
    Object? limit = null,
    Object? offset = null,
    Object? orderBy = null,
  }) {
    return _then(_value.copyWith(
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      toggleId: freezed == toggleId
          ? _value.toggleId
          : toggleId // ignore: cast_nullable_to_non_nullable
              as int?,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType?,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as ReactionOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionQueryFilterImplCopyWith<$Res>
    implements $ReactionQueryFilterCopyWith<$Res> {
  factory _$$ReactionQueryFilterImplCopyWith(_$ReactionQueryFilterImpl value,
          $Res Function(_$ReactionQueryFilterImpl) then) =
      __$$ReactionQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? ids,
      int? userId,
      int? toggleId,
      DateTime? interestedIn,
      ReactionType? reactionType,
      TargetType? targetType,
      bool ascending,
      int limit,
      int offset,
      ReactionOrder orderBy});
}

/// @nodoc
class __$$ReactionQueryFilterImplCopyWithImpl<$Res>
    extends _$ReactionQueryFilterCopyWithImpl<$Res, _$ReactionQueryFilterImpl>
    implements _$$ReactionQueryFilterImplCopyWith<$Res> {
  __$$ReactionQueryFilterImplCopyWithImpl(_$ReactionQueryFilterImpl _value,
      $Res Function(_$ReactionQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? userId = freezed,
    Object? toggleId = freezed,
    Object? interestedIn = freezed,
    Object? reactionType = freezed,
    Object? targetType = freezed,
    Object? ascending = null,
    Object? limit = null,
    Object? offset = null,
    Object? orderBy = null,
  }) {
    return _then(_$ReactionQueryFilterImpl(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      toggleId: freezed == toggleId
          ? _value.toggleId
          : toggleId // ignore: cast_nullable_to_non_nullable
              as int?,
      interestedIn: freezed == interestedIn
          ? _value.interestedIn
          : interestedIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as ReactionType?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as TargetType?,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as ReactionOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionQueryFilterImpl implements _ReactionQueryFilter {
  const _$ReactionQueryFilterImpl(
      {final List<int>? ids,
      this.userId,
      this.toggleId,
      this.interestedIn,
      this.reactionType,
      this.targetType,
      this.ascending = false,
      this.limit = 20,
      this.offset = 0,
      this.orderBy = ReactionOrder.interestedIn})
      : _ids = ids;

  factory _$ReactionQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionQueryFilterImplFromJson(json);

  final List<int>? _ids;
  @override
  List<int>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? userId;
  @override
  final int? toggleId;
  @override
  final DateTime? interestedIn;
  @override
  final ReactionType? reactionType;
  @override
  final TargetType? targetType;
  @override
  @JsonKey()
  final bool ascending;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final ReactionOrder orderBy;

  @override
  String toString() {
    return 'ReactionQueryFilter(ids: $ids, userId: $userId, toggleId: $toggleId, interestedIn: $interestedIn, reactionType: $reactionType, targetType: $targetType, ascending: $ascending, limit: $limit, offset: $offset, orderBy: $orderBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionQueryFilterImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.toggleId, toggleId) ||
                other.toggleId == toggleId) &&
            (identical(other.interestedIn, interestedIn) ||
                other.interestedIn == interestedIn) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ids),
      userId,
      toggleId,
      interestedIn,
      reactionType,
      targetType,
      ascending,
      limit,
      offset,
      orderBy);

  /// Create a copy of ReactionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionQueryFilterImplCopyWith<_$ReactionQueryFilterImpl> get copyWith =>
      __$$ReactionQueryFilterImplCopyWithImpl<_$ReactionQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _ReactionQueryFilter implements ReactionQueryFilter {
  const factory _ReactionQueryFilter(
      {final List<int>? ids,
      final int? userId,
      final int? toggleId,
      final DateTime? interestedIn,
      final ReactionType? reactionType,
      final TargetType? targetType,
      final bool ascending,
      final int limit,
      final int offset,
      final ReactionOrder orderBy}) = _$ReactionQueryFilterImpl;

  factory _ReactionQueryFilter.fromJson(Map<String, dynamic> json) =
      _$ReactionQueryFilterImpl.fromJson;

  @override
  List<int>? get ids;
  @override
  int? get userId;
  @override
  int? get toggleId;
  @override
  DateTime? get interestedIn;
  @override
  ReactionType? get reactionType;
  @override
  TargetType? get targetType;
  @override
  bool get ascending;
  @override
  int get limit;
  @override
  int get offset;
  @override
  ReactionOrder get orderBy;

  /// Create a copy of ReactionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionQueryFilterImplCopyWith<_$ReactionQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
