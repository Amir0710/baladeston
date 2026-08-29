// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_item_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionItemQueryFilter _$CollectionItemQueryFilterFromJson(
    Map<String, dynamic> json) {
  return _CollectionItemQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$CollectionItemQueryFilter {
  String? get searchTerm => throw _privateConstructorUsedError;
  List<int>? get ids => throw _privateConstructorUsedError;
  int? get collectionId => throw _privateConstructorUsedError;
  int? get adderId => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  CollectionItemStatus? get status => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  CollectionOrder get order => throw _privateConstructorUsedError;

  /// Serializes this CollectionItemQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionItemQueryFilterCopyWith<CollectionItemQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionItemQueryFilterCopyWith<$Res> {
  factory $CollectionItemQueryFilterCopyWith(CollectionItemQueryFilter value,
          $Res Function(CollectionItemQueryFilter) then) =
      _$CollectionItemQueryFilterCopyWithImpl<$Res, CollectionItemQueryFilter>;
  @useResult
  $Res call(
      {String? searchTerm,
      List<int>? ids,
      int? collectionId,
      int? adderId,
      int? videoId,
      double? minRating,
      double? minPrice,
      double? maxPrice,
      CollectionItemStatus? status,
      int limit,
      String? cursor,
      bool ascending,
      CollectionOrder order});
}

/// @nodoc
class _$CollectionItemQueryFilterCopyWithImpl<$Res,
        $Val extends CollectionItemQueryFilter>
    implements $CollectionItemQueryFilterCopyWith<$Res> {
  _$CollectionItemQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? ids = freezed,
    Object? collectionId = freezed,
    Object? adderId = freezed,
    Object? videoId = freezed,
    Object? minRating = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? status = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionItemStatus?,
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
abstract class _$$CollectionItemQueryFilterImplCopyWith<$Res>
    implements $CollectionItemQueryFilterCopyWith<$Res> {
  factory _$$CollectionItemQueryFilterImplCopyWith(
          _$CollectionItemQueryFilterImpl value,
          $Res Function(_$CollectionItemQueryFilterImpl) then) =
      __$$CollectionItemQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchTerm,
      List<int>? ids,
      int? collectionId,
      int? adderId,
      int? videoId,
      double? minRating,
      double? minPrice,
      double? maxPrice,
      CollectionItemStatus? status,
      int limit,
      String? cursor,
      bool ascending,
      CollectionOrder order});
}

/// @nodoc
class __$$CollectionItemQueryFilterImplCopyWithImpl<$Res>
    extends _$CollectionItemQueryFilterCopyWithImpl<$Res,
        _$CollectionItemQueryFilterImpl>
    implements _$$CollectionItemQueryFilterImplCopyWith<$Res> {
  __$$CollectionItemQueryFilterImplCopyWithImpl(
      _$CollectionItemQueryFilterImpl _value,
      $Res Function(_$CollectionItemQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? ids = freezed,
    Object? collectionId = freezed,
    Object? adderId = freezed,
    Object? videoId = freezed,
    Object? minRating = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? status = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$CollectionItemQueryFilterImpl(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionItemStatus?,
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
class _$CollectionItemQueryFilterImpl implements _CollectionItemQueryFilter {
  const _$CollectionItemQueryFilterImpl(
      {this.searchTerm,
      final List<int>? ids,
      this.collectionId,
      this.adderId,
      this.videoId,
      this.minRating,
      this.minPrice,
      this.maxPrice,
      this.status,
      this.limit = 20,
      this.cursor,
      this.ascending = false,
      this.order = CollectionOrder.createdAt})
      : _ids = ids;

  factory _$CollectionItemQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionItemQueryFilterImplFromJson(json);

  @override
  final String? searchTerm;
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
  final int? collectionId;
  @override
  final int? adderId;
  @override
  final int? videoId;
  @override
  final double? minRating;
  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final CollectionItemStatus? status;
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
    return 'CollectionItemQueryFilter(searchTerm: $searchTerm, ids: $ids, collectionId: $collectionId, adderId: $adderId, videoId: $videoId, minRating: $minRating, minPrice: $minPrice, maxPrice: $maxPrice, status: $status, limit: $limit, cursor: $cursor, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionItemQueryFilterImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.adderId, adderId) || other.adderId == adderId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.status, status) || other.status == status) &&
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
      searchTerm,
      const DeepCollectionEquality().hash(_ids),
      collectionId,
      adderId,
      videoId,
      minRating,
      minPrice,
      maxPrice,
      status,
      limit,
      cursor,
      ascending,
      order);

  /// Create a copy of CollectionItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionItemQueryFilterImplCopyWith<_$CollectionItemQueryFilterImpl>
      get copyWith => __$$CollectionItemQueryFilterImplCopyWithImpl<
          _$CollectionItemQueryFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionItemQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _CollectionItemQueryFilter implements CollectionItemQueryFilter {
  const factory _CollectionItemQueryFilter(
      {final String? searchTerm,
      final List<int>? ids,
      final int? collectionId,
      final int? adderId,
      final int? videoId,
      final double? minRating,
      final double? minPrice,
      final double? maxPrice,
      final CollectionItemStatus? status,
      final int limit,
      final String? cursor,
      final bool ascending,
      final CollectionOrder order}) = _$CollectionItemQueryFilterImpl;

  factory _CollectionItemQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CollectionItemQueryFilterImpl.fromJson;

  @override
  String? get searchTerm;
  @override
  List<int>? get ids;
  @override
  int? get collectionId;
  @override
  int? get adderId;
  @override
  int? get videoId;
  @override
  double? get minRating;
  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  CollectionItemStatus? get status;
  @override
  int get limit;
  @override
  String? get cursor;
  @override
  bool get ascending;
  @override
  CollectionOrder get order;

  /// Create a copy of CollectionItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionItemQueryFilterImplCopyWith<_$CollectionItemQueryFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
