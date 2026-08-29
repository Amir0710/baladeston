// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionQueryFilter _$CollectionQueryFilterFromJson(
    Map<String, dynamic> json) {
  return _CollectionQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$CollectionQueryFilter {
  List<int>? get ids => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  CollectionStatus? get status => throw _privateConstructorUsedError;
  CollectionType? get type => throw _privateConstructorUsedError;
  int? get minCount => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  CollectionOrder get order => throw _privateConstructorUsedError;

  /// Serializes this CollectionQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionQueryFilterCopyWith<CollectionQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionQueryFilterCopyWith<$Res> {
  factory $CollectionQueryFilterCopyWith(CollectionQueryFilter value,
          $Res Function(CollectionQueryFilter) then) =
      _$CollectionQueryFilterCopyWithImpl<$Res, CollectionQueryFilter>;
  @useResult
  $Res call(
      {List<int>? ids,
      String? searchTerm,
      int? ownerId,
      CollectionStatus? status,
      CollectionType? type,
      int? minCount,
      int? maxCount,
      int? minPrice,
      int? maxPrice,
      double? minRating,
      int limit,
      String? cursor,
      bool ascending,
      CollectionOrder order});
}

/// @nodoc
class _$CollectionQueryFilterCopyWithImpl<$Res,
        $Val extends CollectionQueryFilter>
    implements $CollectionQueryFilterCopyWith<$Res> {
  _$CollectionQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? searchTerm = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minRating = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollectionType?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as CollectionOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionQueryFilterImplCopyWith<$Res>
    implements $CollectionQueryFilterCopyWith<$Res> {
  factory _$$CollectionQueryFilterImplCopyWith(
          _$CollectionQueryFilterImpl value,
          $Res Function(_$CollectionQueryFilterImpl) then) =
      __$$CollectionQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? ids,
      String? searchTerm,
      int? ownerId,
      CollectionStatus? status,
      CollectionType? type,
      int? minCount,
      int? maxCount,
      int? minPrice,
      int? maxPrice,
      double? minRating,
      int limit,
      String? cursor,
      bool ascending,
      CollectionOrder order});
}

/// @nodoc
class __$$CollectionQueryFilterImplCopyWithImpl<$Res>
    extends _$CollectionQueryFilterCopyWithImpl<$Res,
        _$CollectionQueryFilterImpl>
    implements _$$CollectionQueryFilterImplCopyWith<$Res> {
  __$$CollectionQueryFilterImplCopyWithImpl(_$CollectionQueryFilterImpl _value,
      $Res Function(_$CollectionQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? searchTerm = freezed,
    Object? ownerId = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minRating = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$CollectionQueryFilterImpl(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionStatus?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CollectionType?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as CollectionOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionQueryFilterImpl implements _CollectionQueryFilter {
  const _$CollectionQueryFilterImpl(
      {final List<int>? ids,
      this.searchTerm,
      this.ownerId,
      this.status,
      this.type,
      this.minCount,
      this.maxCount,
      this.minPrice,
      this.maxPrice,
      this.minRating,
      this.limit = 20,
      this.cursor,
      this.ascending = false,
      this.order = CollectionOrder.createdAt})
      : _ids = ids;

  factory _$CollectionQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionQueryFilterImplFromJson(json);

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
  final String? searchTerm;
  @override
  final int? ownerId;
  @override
  final CollectionStatus? status;
  @override
  final CollectionType? type;
  @override
  final int? minCount;
  @override
  final int? maxCount;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;
  @override
  final double? minRating;
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
  final CollectionOrder order;

  @override
  String toString() {
    return 'CollectionQueryFilter(ids: $ids, searchTerm: $searchTerm, ownerId: $ownerId, status: $status, type: $type, minCount: $minCount, maxCount: $maxCount, minPrice: $minPrice, maxPrice: $maxPrice, minRating: $minRating, limit: $limit, cursor: $cursor, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionQueryFilterImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
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
      const DeepCollectionEquality().hash(_ids),
      searchTerm,
      ownerId,
      status,
      type,
      minCount,
      maxCount,
      minPrice,
      maxPrice,
      minRating,
      limit,
      cursor,
      ascending,
      order);

  /// Create a copy of CollectionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionQueryFilterImplCopyWith<_$CollectionQueryFilterImpl>
      get copyWith => __$$CollectionQueryFilterImplCopyWithImpl<
          _$CollectionQueryFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _CollectionQueryFilter implements CollectionQueryFilter {
  const factory _CollectionQueryFilter(
      {final List<int>? ids,
      final String? searchTerm,
      final int? ownerId,
      final CollectionStatus? status,
      final CollectionType? type,
      final int? minCount,
      final int? maxCount,
      final int? minPrice,
      final int? maxPrice,
      final double? minRating,
      final int limit,
      final String? cursor,
      final bool ascending,
      final CollectionOrder order}) = _$CollectionQueryFilterImpl;

  factory _CollectionQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CollectionQueryFilterImpl.fromJson;

  @override
  List<int>? get ids;
  @override
  String? get searchTerm;
  @override
  int? get ownerId;
  @override
  CollectionStatus? get status;
  @override
  CollectionType? get type;
  @override
  int? get minCount;
  @override
  int? get maxCount;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  double? get minRating;
  @override
  int get limit;
  @override
  String? get cursor;
  @override
  bool get ascending;
  @override
  CollectionOrder get order;

  /// Create a copy of CollectionQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionQueryFilterImplCopyWith<_$CollectionQueryFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
