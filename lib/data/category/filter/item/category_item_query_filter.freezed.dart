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
  int? get categoryId => throw _privateConstructorUsedError;
  int? get adderId => throw _privateConstructorUsedError;
  int? get collectionId => throw _privateConstructorUsedError;
  CategoryItemStatus? get status => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
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
      {int? categoryId,
      int? adderId,
      int? collectionId,
      CategoryItemStatus? status,
      int limit,
      int offset,
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
    Object? categoryId = freezed,
    Object? adderId = freezed,
    Object? collectionId = freezed,
    Object? status = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int? categoryId,
      int? adderId,
      int? collectionId,
      CategoryItemStatus? status,
      int limit,
      int offset,
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
    Object? categoryId = freezed,
    Object? adderId = freezed,
    Object? collectionId = freezed,
    Object? status = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$CategoryItemQueryFilterImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryItemStatus?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
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
      {this.categoryId,
      this.adderId,
      this.collectionId,
      this.status,
      this.limit = 20,
      this.offset = 0,
      this.ascending = false,
      this.order = CategoryOrder.title});

  factory _$CategoryItemQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemQueryFilterImplFromJson(json);

  @override
  final int? categoryId;
  @override
  final int? adderId;
  @override
  final int? collectionId;
  @override
  final CategoryItemStatus? status;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool ascending;
  @override
  @JsonKey()
  final CategoryOrder order;

  @override
  String toString() {
    return 'CategoryItemQueryFilter(categoryId: $categoryId, adderId: $adderId, collectionId: $collectionId, status: $status, limit: $limit, offset: $offset, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemQueryFilterImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.adderId, adderId) || other.adderId == adderId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, adderId,
      collectionId, status, limit, offset, ascending, order);

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
      {final int? categoryId,
      final int? adderId,
      final int? collectionId,
      final CategoryItemStatus? status,
      final int limit,
      final int offset,
      final bool ascending,
      final CategoryOrder order}) = _$CategoryItemQueryFilterImpl;

  factory _CategoryItemQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CategoryItemQueryFilterImpl.fromJson;

  @override
  int? get categoryId;
  @override
  int? get adderId;
  @override
  int? get collectionId;
  @override
  CategoryItemStatus? get status;
  @override
  int get limit;
  @override
  int get offset;
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
