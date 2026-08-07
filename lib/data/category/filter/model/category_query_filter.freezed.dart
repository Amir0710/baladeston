// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryQueryFilter _$CategoryQueryFilterFromJson(Map<String, dynamic> json) {
  return _CategoryQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$CategoryQueryFilter {
  String? get searchTerm => throw _privateConstructorUsedError;
  int? get searchId => throw _privateConstructorUsedError;
  CategoryStatus? get status => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  int? get minCount => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  CategoryOrder get order => throw _privateConstructorUsedError;

  /// Serializes this CategoryQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryQueryFilterCopyWith<CategoryQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryQueryFilterCopyWith<$Res> {
  factory $CategoryQueryFilterCopyWith(
          CategoryQueryFilter value, $Res Function(CategoryQueryFilter) then) =
      _$CategoryQueryFilterCopyWithImpl<$Res, CategoryQueryFilter>;
  @useResult
  $Res call(
      {String? searchTerm,
      int? searchId,
      CategoryStatus? status,
      int? ownerId,
      int? minCount,
      int? maxCount,
      int limit,
      int offset,
      bool ascending,
      CategoryOrder order});
}

/// @nodoc
class _$CategoryQueryFilterCopyWithImpl<$Res, $Val extends CategoryQueryFilter>
    implements $CategoryQueryFilterCopyWith<$Res> {
  _$CategoryQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? searchId = freezed,
    Object? status = freezed,
    Object? ownerId = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      searchId: freezed == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryStatus?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$CategoryQueryFilterImplCopyWith<$Res>
    implements $CategoryQueryFilterCopyWith<$Res> {
  factory _$$CategoryQueryFilterImplCopyWith(_$CategoryQueryFilterImpl value,
          $Res Function(_$CategoryQueryFilterImpl) then) =
      __$$CategoryQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchTerm,
      int? searchId,
      CategoryStatus? status,
      int? ownerId,
      int? minCount,
      int? maxCount,
      int limit,
      int offset,
      bool ascending,
      CategoryOrder order});
}

/// @nodoc
class __$$CategoryQueryFilterImplCopyWithImpl<$Res>
    extends _$CategoryQueryFilterCopyWithImpl<$Res, _$CategoryQueryFilterImpl>
    implements _$$CategoryQueryFilterImplCopyWith<$Res> {
  __$$CategoryQueryFilterImplCopyWithImpl(_$CategoryQueryFilterImpl _value,
      $Res Function(_$CategoryQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = freezed,
    Object? searchId = freezed,
    Object? status = freezed,
    Object? ownerId = freezed,
    Object? minCount = freezed,
    Object? maxCount = freezed,
    Object? limit = null,
    Object? offset = null,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$CategoryQueryFilterImpl(
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      searchId: freezed == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CategoryStatus?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$CategoryQueryFilterImpl implements _CategoryQueryFilter {
  const _$CategoryQueryFilterImpl(
      {this.searchTerm,
      this.searchId,
      this.status,
      this.ownerId,
      this.minCount,
      this.maxCount,
      this.limit = 20,
      this.offset = 0,
      this.ascending = false,
      this.order = CategoryOrder.title});

  factory _$CategoryQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryQueryFilterImplFromJson(json);

  @override
  final String? searchTerm;
  @override
  final int? searchId;
  @override
  final CategoryStatus? status;
  @override
  final int? ownerId;
  @override
  final int? minCount;
  @override
  final int? maxCount;
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
    return 'CategoryQueryFilter(searchTerm: $searchTerm, searchId: $searchId, status: $status, ownerId: $ownerId, minCount: $minCount, maxCount: $maxCount, limit: $limit, offset: $offset, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryQueryFilterImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchTerm, searchId, status,
      ownerId, minCount, maxCount, limit, offset, ascending, order);

  /// Create a copy of CategoryQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryQueryFilterImplCopyWith<_$CategoryQueryFilterImpl> get copyWith =>
      __$$CategoryQueryFilterImplCopyWithImpl<_$CategoryQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _CategoryQueryFilter implements CategoryQueryFilter {
  const factory _CategoryQueryFilter(
      {final String? searchTerm,
      final int? searchId,
      final CategoryStatus? status,
      final int? ownerId,
      final int? minCount,
      final int? maxCount,
      final int limit,
      final int offset,
      final bool ascending,
      final CategoryOrder order}) = _$CategoryQueryFilterImpl;

  factory _CategoryQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CategoryQueryFilterImpl.fromJson;

  @override
  String? get searchTerm;
  @override
  int? get searchId;
  @override
  CategoryStatus? get status;
  @override
  int? get ownerId;
  @override
  int? get minCount;
  @override
  int? get maxCount;
  @override
  int get limit;
  @override
  int get offset;
  @override
  bool get ascending;
  @override
  CategoryOrder get order;

  /// Create a copy of CategoryQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryQueryFilterImplCopyWith<_$CategoryQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
