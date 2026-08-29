// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryItemQueryFilter _$CategoryItemQueryFilterFromJson(
    Map<String, dynamic> json) {
  return _CategoryItemQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemQueryFilter {
  String? get searchTerm => throw _privateConstructorUsedError;
  List<int>? get ids => throw _privateConstructorUsedError;
  int? get minCount => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  int? get adderId => throw _privateConstructorUsedError;
  int? get collectionId => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  CategoryItemStatus? get status => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  CategoryOrder get order => throw _privateConstructorUsedError;

  /// Serializes this CategoryItemQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryItemQueryFilterCopyWith<CategoryItemQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemQueryFilterCopyWith<$Res> {
  factory $CategoryItemQueryFilterCopyWith(CategoryItemQueryFilter value,
          $Res Function(CategoryItemQueryFilter) then) =
      _$CategoryItemQueryFilterCopyWithImpl<$Res, CategoryItemQueryFilter>;
  @useResult
  $Res call(
      {String? searchTerm,
      List<int>? ids,
      int? minCount,
      int? maxCount,
      int? minPrice,
      int? maxPrice,
      int? categoryId,
      int? adderId,
      int? collectionId,
      double? minRating,
      CategoryItemStatus? status,
      int limit,
      String? cursor,
      bool ascending,
      CategoryOrder order});
}

/// @nodoc
class _$CategoryItemQueryFilterCopyWithImpl<$Res,
        $Val extends CategoryItemQueryFilter>
    implements $CategoryItemQueryFilterCopyWith<$Res> {
  _$CategoryItemQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? ids = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? categoryId = freezed,
    Object? adderId = freezed,
    Object? collectionId = freezed,
    Object? minRating = freezed,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
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
              as CategoryOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemQueryFilterImplCopyWith<$Res>
    implements $CategoryItemQueryFilterCopyWith<$Res> {
  factory _$$CategoryItemQueryFilterImplCopyWith(
          _$CategoryItemQueryFilterImpl value,
          $Res Function(_$CategoryItemQueryFilterImpl) then) =
      __$$CategoryItemQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchTerm,
      List<int>? ids,
      int? minCount,
      int? maxCount,
      int? minPrice,
      int? maxPrice,
      int? categoryId,
      int? adderId,
      int? collectionId,
      double? minRating,
      CategoryItemStatus? status,
      int limit,
      String? cursor,
      bool ascending,
      CategoryOrder order});
}

/// @nodoc
class __$$CategoryItemQueryFilterImplCopyWithImpl<$Res>
    extends _$CategoryItemQueryFilterCopyWithImpl<$Res,
        _$CategoryItemQueryFilterImpl>
    implements _$$CategoryItemQueryFilterImplCopyWith<$Res> {
  __$$CategoryItemQueryFilterImplCopyWithImpl(
      _$CategoryItemQueryFilterImpl _value,
      $Res Function(_$CategoryItemQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? ids = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? categoryId = freezed,
    Object? adderId = freezed,
    Object? collectionId = freezed,
    Object? minRating = freezed,
    Object? status = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$CategoryItemQueryFilterImpl(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
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
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      adderId: freezed == adderId
          ? _value.adderId
          : adderId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
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
              as CategoryOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemQueryFilterImpl implements _CategoryItemQueryFilter {
  const _$CategoryItemQueryFilterImpl(
      {this.searchTerm,
      final List<int>? ids,
      this.minCount,
      this.maxCount,
      this.minPrice,
      this.maxPrice,
      this.categoryId,
      this.adderId,
      this.collectionId,
      this.minRating,
      this.status,
      this.limit = 20,
      this.cursor,
      this.ascending = false,
      this.order = CategoryOrder.createdAt})
      : _ids = ids;

  factory _$CategoryItemQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemQueryFilterImplFromJson(json);

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
  final int? minCount;
  @override
  final int? maxCount;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;
  @override
  final int? categoryId;
  @override
  final int? adderId;
  @override
  final int? collectionId;
  @override
  final double? minRating;
  @override
  final CategoryItemStatus? status;
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
  final CategoryOrder order;

  @override
  String toString() {
    return 'CategoryItemQueryFilter(searchTerm: $searchTerm, ids: $ids, minCount: $minCount, maxCount: $maxCount, minPrice: $minPrice, maxPrice: $maxPrice, categoryId: $categoryId, adderId: $adderId, collectionId: $collectionId, minRating: $minRating, status: $status, limit: $limit, cursor: $cursor, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemQueryFilterImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.adderId, adderId) || other.adderId == adderId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
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
      minCount,
      maxCount,
      minPrice,
      maxPrice,
      categoryId,
      adderId,
      collectionId,
      minRating,
      status,
      limit,
      cursor,
      ascending,
      order);

  /// Create a copy of CategoryItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemQueryFilterImplCopyWith<_$CategoryItemQueryFilterImpl>
      get copyWith => __$$CategoryItemQueryFilterImplCopyWithImpl<
          _$CategoryItemQueryFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _CategoryItemQueryFilter implements CategoryItemQueryFilter {
  const factory _CategoryItemQueryFilter(
      {final String? searchTerm,
      final List<int>? ids,
      final int? minCount,
      final int? maxCount,
      final int? minPrice,
      final int? maxPrice,
      final int? categoryId,
      final int? adderId,
      final int? collectionId,
      final double? minRating,
      final CategoryItemStatus? status,
      final int limit,
      final String? cursor,
      final bool ascending,
      final CategoryOrder order}) = _$CategoryItemQueryFilterImpl;

  factory _CategoryItemQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CategoryItemQueryFilterImpl.fromJson;

  @override
  String? get searchTerm;
  @override
  List<int>? get ids;
  @override
  int? get minCount;
  @override
  int? get maxCount;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  int? get categoryId;
  @override
  int? get adderId;
  @override
  int? get collectionId;
  @override
  double? get minRating;
  @override
  CategoryItemStatus? get status;
  @override
  int get limit;
  @override
  String? get cursor;
  @override
  bool get ascending;
  @override
  CategoryOrder get order;

  /// Create a copy of CategoryItemQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryItemQueryFilterImplCopyWith<_$CategoryItemQueryFilterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
