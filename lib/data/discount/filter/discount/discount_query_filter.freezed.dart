// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountQueryFilter _$DiscountQueryFilterFromJson(Map<String, dynamic> json) {
  return _DiscountQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$DiscountQueryFilter {
  int? get ownerId =>
      throw _privateConstructorUsedError; // in user app is not important and i must extract id from token but i need it for admin panel
  List<int>? get ids => throw _privateConstructorUsedError; // validated needed
  int? get targetId => throw _privateConstructorUsedError; // validated needed
  DiscountTargetType? get targetType => throw _privateConstructorUsedError;
  String? get searchTerm =>
      throw _privateConstructorUsedError; // validated needed
  int? get minPercent => throw _privateConstructorUsedError; // validated needed
  int? get maxPercent => throw _privateConstructorUsedError; // validated needed
  DiscountStatus? get status => throw _privateConstructorUsedError;
  DateTime? get createAt => throw _privateConstructorUsedError;
  bool? get userCreated => throw _privateConstructorUsedError;
  DateTime? get expiresAt =>
      throw _privateConstructorUsedError; // validated needed
  int? get maxUse => throw _privateConstructorUsedError; // validated needed
  int? get usage => throw _privateConstructorUsedError; // validated needed
  int get limit => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  DiscountOrder get order => throw _privateConstructorUsedError;

  /// Serializes this DiscountQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountQueryFilterCopyWith<DiscountQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountQueryFilterCopyWith<$Res> {
  factory $DiscountQueryFilterCopyWith(
          DiscountQueryFilter value, $Res Function(DiscountQueryFilter) then) =
      _$DiscountQueryFilterCopyWithImpl<$Res, DiscountQueryFilter>;
  @useResult
  $Res call(
      {int? ownerId,
      List<int>? ids,
      int? targetId,
      DiscountTargetType? targetType,
      String? searchTerm,
      int? minPercent,
      int? maxPercent,
      DiscountStatus? status,
      DateTime? createAt,
      bool? userCreated,
      DateTime? expiresAt,
      int? maxUse,
      int? usage,
      int limit,
      String? cursor,
      bool ascending,
      DiscountOrder order});
}

/// @nodoc
class _$DiscountQueryFilterCopyWithImpl<$Res, $Val extends DiscountQueryFilter>
    implements $DiscountQueryFilterCopyWith<$Res> {
  _$DiscountQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? ids = freezed,
    Object? targetId = freezed,
    Object? targetType = freezed,
    Object? searchTerm = freezed,
    Object? minPercent = freezed,
    Object? maxPercent = freezed,
    Object? status = freezed,
    Object? createAt = freezed,
    Object? userCreated = freezed,
    Object? expiresAt = freezed,
    Object? maxUse = freezed,
    Object? usage = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as DiscountTargetType?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      minPercent: freezed == minPercent
          ? _value.minPercent
          : minPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPercent: freezed == maxPercent
          ? _value.maxPercent
          : maxPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscountStatus?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
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
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as DiscountOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountQueryFilterImplCopyWith<$Res>
    implements $DiscountQueryFilterCopyWith<$Res> {
  factory _$$DiscountQueryFilterImplCopyWith(_$DiscountQueryFilterImpl value,
          $Res Function(_$DiscountQueryFilterImpl) then) =
      __$$DiscountQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ownerId,
      List<int>? ids,
      int? targetId,
      DiscountTargetType? targetType,
      String? searchTerm,
      int? minPercent,
      int? maxPercent,
      DiscountStatus? status,
      DateTime? createAt,
      bool? userCreated,
      DateTime? expiresAt,
      int? maxUse,
      int? usage,
      int limit,
      String? cursor,
      bool ascending,
      DiscountOrder order});
}

/// @nodoc
class __$$DiscountQueryFilterImplCopyWithImpl<$Res>
    extends _$DiscountQueryFilterCopyWithImpl<$Res, _$DiscountQueryFilterImpl>
    implements _$$DiscountQueryFilterImplCopyWith<$Res> {
  __$$DiscountQueryFilterImplCopyWithImpl(_$DiscountQueryFilterImpl _value,
      $Res Function(_$DiscountQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerId = freezed,
    Object? ids = freezed,
    Object? targetId = freezed,
    Object? targetType = freezed,
    Object? searchTerm = freezed,
    Object? minPercent = freezed,
    Object? maxPercent = freezed,
    Object? status = freezed,
    Object? createAt = freezed,
    Object? userCreated = freezed,
    Object? expiresAt = freezed,
    Object? maxUse = freezed,
    Object? usage = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$DiscountQueryFilterImpl(
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as DiscountTargetType?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      minPercent: freezed == minPercent
          ? _value.minPercent
          : minPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPercent: freezed == maxPercent
          ? _value.maxPercent
          : maxPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DiscountStatus?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
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
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as DiscountOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountQueryFilterImpl implements _DiscountQueryFilter {
  const _$DiscountQueryFilterImpl(
      {this.ownerId,
      final List<int>? ids,
      this.targetId,
      this.targetType,
      this.searchTerm,
      this.minPercent,
      this.maxPercent,
      this.status,
      this.createAt,
      this.userCreated,
      this.expiresAt,
      this.maxUse,
      this.usage,
      this.limit = 20,
      this.cursor,
      this.ascending = false,
      this.order = DiscountOrder.expiresAt})
      : _ids = ids;

  factory _$DiscountQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountQueryFilterImplFromJson(json);

  @override
  final int? ownerId;
// in user app is not important and i must extract id from token but i need it for admin panel
  final List<int>? _ids;
// in user app is not important and i must extract id from token but i need it for admin panel
  @override
  List<int>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// validated needed
  @override
  final int? targetId;
// validated needed
  @override
  final DiscountTargetType? targetType;
  @override
  final String? searchTerm;
// validated needed
  @override
  final int? minPercent;
// validated needed
  @override
  final int? maxPercent;
// validated needed
  @override
  final DiscountStatus? status;
  @override
  final DateTime? createAt;
  @override
  final bool? userCreated;
  @override
  final DateTime? expiresAt;
// validated needed
  @override
  final int? maxUse;
// validated needed
  @override
  final int? usage;
// validated needed
  @override
  @JsonKey()
  final int limit;
  @override
  final String? cursor;
  @override
  @JsonKey()
  final bool ascending;
  @override
  @JsonKey()
  final DiscountOrder order;

  @override
  String toString() {
    return 'DiscountQueryFilter(ownerId: $ownerId, ids: $ids, targetId: $targetId, targetType: $targetType, searchTerm: $searchTerm, minPercent: $minPercent, maxPercent: $maxPercent, status: $status, createAt: $createAt, userCreated: $userCreated, expiresAt: $expiresAt, maxUse: $maxUse, usage: $usage, limit: $limit, cursor: $cursor, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountQueryFilterImpl &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.minPercent, minPercent) ||
                other.minPercent == minPercent) &&
            (identical(other.maxPercent, maxPercent) ||
                other.maxPercent == maxPercent) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.userCreated, userCreated) ||
                other.userCreated == userCreated) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.maxUse, maxUse) || other.maxUse == maxUse) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ownerId,
      const DeepCollectionEquality().hash(_ids),
      targetId,
      targetType,
      searchTerm,
      minPercent,
      maxPercent,
      status,
      createAt,
      userCreated,
      expiresAt,
      maxUse,
      usage,
      limit,
      cursor,
      ascending,
      order);

  /// Create a copy of DiscountQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountQueryFilterImplCopyWith<_$DiscountQueryFilterImpl> get copyWith =>
      __$$DiscountQueryFilterImplCopyWithImpl<_$DiscountQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _DiscountQueryFilter implements DiscountQueryFilter {
  const factory _DiscountQueryFilter(
      {final int? ownerId,
      final List<int>? ids,
      final int? targetId,
      final DiscountTargetType? targetType,
      final String? searchTerm,
      final int? minPercent,
      final int? maxPercent,
      final DiscountStatus? status,
      final DateTime? createAt,
      final bool? userCreated,
      final DateTime? expiresAt,
      final int? maxUse,
      final int? usage,
      final int limit,
      final String? cursor,
      final bool ascending,
      final DiscountOrder order}) = _$DiscountQueryFilterImpl;

  factory _DiscountQueryFilter.fromJson(Map<String, dynamic> json) =
      _$DiscountQueryFilterImpl.fromJson;

  @override
  int?
      get ownerId; // in user app is not important and i must extract id from token but i need it for admin panel
  @override
  List<int>? get ids; // validated needed
  @override
  int? get targetId; // validated needed
  @override
  DiscountTargetType? get targetType;
  @override
  String? get searchTerm; // validated needed
  @override
  int? get minPercent; // validated needed
  @override
  int? get maxPercent; // validated needed
  @override
  DiscountStatus? get status;
  @override
  DateTime? get createAt;
  @override
  bool? get userCreated;
  @override
  DateTime? get expiresAt; // validated needed
  @override
  int? get maxUse; // validated needed
  @override
  int? get usage; // validated needed
  @override
  int get limit;
  @override
  String? get cursor;
  @override
  bool get ascending;
  @override
  DiscountOrder get order;

  /// Create a copy of DiscountQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountQueryFilterImplCopyWith<_$DiscountQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
