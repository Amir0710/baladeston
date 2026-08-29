// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoQueryFilter _$VideoQueryFilterFromJson(Map<String, dynamic> json) {
  return _VideoQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$VideoQueryFilter {
  List<int>? get ids => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;
  VideoStatus? get status => throw _privateConstructorUsedError;
  int? get uploaderId => throw _privateConstructorUsedError;
  int? get minRecommendedAge => throw _privateConstructorUsedError;
  int? get maxRecommendedAge => throw _privateConstructorUsedError;
  VideoLevel? get level => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  DateTime? get uploadedAfter => throw _privateConstructorUsedError;
  DateTime? get uploadedBefore => throw _privateConstructorUsedError;
  int? get videoDuration => throw _privateConstructorUsedError;
  int? get ownerId => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  VideoOrder get order => throw _privateConstructorUsedError;

  /// Serializes this VideoQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoQueryFilterCopyWith<VideoQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoQueryFilterCopyWith<$Res> {
  factory $VideoQueryFilterCopyWith(
          VideoQueryFilter value, $Res Function(VideoQueryFilter) then) =
      _$VideoQueryFilterCopyWithImpl<$Res, VideoQueryFilter>;
  @useResult
  $Res call(
      {List<int>? ids,
      String? searchTerm,
      VideoStatus? status,
      int? uploaderId,
      int? minRecommendedAge,
      int? maxRecommendedAge,
      VideoLevel? level,
      double? minRating,
      DateTime? uploadedAfter,
      DateTime? uploadedBefore,
      int? videoDuration,
      int? ownerId,
      int? minPrice,
      int? maxPrice,
      int limit,
      String? cursor,
      bool ascending,
      VideoOrder order});
}

/// @nodoc
class _$VideoQueryFilterCopyWithImpl<$Res, $Val extends VideoQueryFilter>
    implements $VideoQueryFilterCopyWith<$Res> {
  _$VideoQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? searchTerm = freezed,
    Object? status = freezed,
    Object? uploaderId = freezed,
    Object? minRecommendedAge = freezed,
    Object? maxRecommendedAge = freezed,
    Object? level = freezed,
    Object? minRating = freezed,
    Object? uploadedAfter = freezed,
    Object? uploadedBefore = freezed,
    Object? videoDuration = freezed,
    Object? ownerId = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus?,
      uploaderId: freezed == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRecommendedAge: freezed == minRecommendedAge
          ? _value.minRecommendedAge
          : minRecommendedAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRecommendedAge: freezed == maxRecommendedAge
          ? _value.maxRecommendedAge
          : maxRecommendedAge // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as VideoLevel?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      uploadedAfter: freezed == uploadedAfter
          ? _value.uploadedAfter
          : uploadedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadedBefore: freezed == uploadedBefore
          ? _value.uploadedBefore
          : uploadedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
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
              as VideoOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoQueryFilterImplCopyWith<$Res>
    implements $VideoQueryFilterCopyWith<$Res> {
  factory _$$VideoQueryFilterImplCopyWith(_$VideoQueryFilterImpl value,
          $Res Function(_$VideoQueryFilterImpl) then) =
      __$$VideoQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? ids,
      String? searchTerm,
      VideoStatus? status,
      int? uploaderId,
      int? minRecommendedAge,
      int? maxRecommendedAge,
      VideoLevel? level,
      double? minRating,
      DateTime? uploadedAfter,
      DateTime? uploadedBefore,
      int? videoDuration,
      int? ownerId,
      int? minPrice,
      int? maxPrice,
      int limit,
      String? cursor,
      bool ascending,
      VideoOrder order});
}

/// @nodoc
class __$$VideoQueryFilterImplCopyWithImpl<$Res>
    extends _$VideoQueryFilterCopyWithImpl<$Res, _$VideoQueryFilterImpl>
    implements _$$VideoQueryFilterImplCopyWith<$Res> {
  __$$VideoQueryFilterImplCopyWithImpl(_$VideoQueryFilterImpl _value,
      $Res Function(_$VideoQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? searchTerm = freezed,
    Object? status = freezed,
    Object? uploaderId = freezed,
    Object? minRecommendedAge = freezed,
    Object? maxRecommendedAge = freezed,
    Object? level = freezed,
    Object? minRating = freezed,
    Object? uploadedAfter = freezed,
    Object? uploadedBefore = freezed,
    Object? videoDuration = freezed,
    Object? ownerId = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? limit = null,
    Object? cursor = freezed,
    Object? ascending = null,
    Object? order = null,
  }) {
    return _then(_$VideoQueryFilterImpl(
      ids: freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus?,
      uploaderId: freezed == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int?,
      minRecommendedAge: freezed == minRecommendedAge
          ? _value.minRecommendedAge
          : minRecommendedAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRecommendedAge: freezed == maxRecommendedAge
          ? _value.maxRecommendedAge
          : maxRecommendedAge // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as VideoLevel?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      uploadedAfter: freezed == uploadedAfter
          ? _value.uploadedAfter
          : uploadedAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      uploadedBefore: freezed == uploadedBefore
          ? _value.uploadedBefore
          : uploadedBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
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
              as VideoOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoQueryFilterImpl implements _VideoQueryFilter {
  const _$VideoQueryFilterImpl(
      {final List<int>? ids,
      this.searchTerm,
      this.status,
      this.uploaderId,
      this.minRecommendedAge,
      this.maxRecommendedAge,
      this.level,
      this.minRating,
      this.uploadedAfter,
      this.uploadedBefore,
      this.videoDuration,
      this.ownerId,
      this.minPrice,
      this.maxPrice,
      this.limit = 20,
      this.cursor,
      this.ascending = false,
      this.order = VideoOrder.createdAt})
      : _ids = ids;

  factory _$VideoQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoQueryFilterImplFromJson(json);

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
  final VideoStatus? status;
  @override
  final int? uploaderId;
  @override
  final int? minRecommendedAge;
  @override
  final int? maxRecommendedAge;
  @override
  final VideoLevel? level;
  @override
  final double? minRating;
  @override
  final DateTime? uploadedAfter;
  @override
  final DateTime? uploadedBefore;
  @override
  final int? videoDuration;
  @override
  final int? ownerId;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;
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
  final VideoOrder order;

  @override
  String toString() {
    return 'VideoQueryFilter(ids: $ids, searchTerm: $searchTerm, status: $status, uploaderId: $uploaderId, minRecommendedAge: $minRecommendedAge, maxRecommendedAge: $maxRecommendedAge, level: $level, minRating: $minRating, uploadedAfter: $uploadedAfter, uploadedBefore: $uploadedBefore, videoDuration: $videoDuration, ownerId: $ownerId, minPrice: $minPrice, maxPrice: $maxPrice, limit: $limit, cursor: $cursor, ascending: $ascending, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoQueryFilterImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploaderId, uploaderId) ||
                other.uploaderId == uploaderId) &&
            (identical(other.minRecommendedAge, minRecommendedAge) ||
                other.minRecommendedAge == minRecommendedAge) &&
            (identical(other.maxRecommendedAge, maxRecommendedAge) ||
                other.maxRecommendedAge == maxRecommendedAge) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.uploadedAfter, uploadedAfter) ||
                other.uploadedAfter == uploadedAfter) &&
            (identical(other.uploadedBefore, uploadedBefore) ||
                other.uploadedBefore == uploadedBefore) &&
            (identical(other.videoDuration, videoDuration) ||
                other.videoDuration == videoDuration) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
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
      status,
      uploaderId,
      minRecommendedAge,
      maxRecommendedAge,
      level,
      minRating,
      uploadedAfter,
      uploadedBefore,
      videoDuration,
      ownerId,
      minPrice,
      maxPrice,
      limit,
      cursor,
      ascending,
      order);

  /// Create a copy of VideoQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoQueryFilterImplCopyWith<_$VideoQueryFilterImpl> get copyWith =>
      __$$VideoQueryFilterImplCopyWithImpl<_$VideoQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _VideoQueryFilter implements VideoQueryFilter {
  const factory _VideoQueryFilter(
      {final List<int>? ids,
      final String? searchTerm,
      final VideoStatus? status,
      final int? uploaderId,
      final int? minRecommendedAge,
      final int? maxRecommendedAge,
      final VideoLevel? level,
      final double? minRating,
      final DateTime? uploadedAfter,
      final DateTime? uploadedBefore,
      final int? videoDuration,
      final int? ownerId,
      final int? minPrice,
      final int? maxPrice,
      final int limit,
      final String? cursor,
      final bool ascending,
      final VideoOrder order}) = _$VideoQueryFilterImpl;

  factory _VideoQueryFilter.fromJson(Map<String, dynamic> json) =
      _$VideoQueryFilterImpl.fromJson;

  @override
  List<int>? get ids;
  @override
  String? get searchTerm;
  @override
  VideoStatus? get status;
  @override
  int? get uploaderId;
  @override
  int? get minRecommendedAge;
  @override
  int? get maxRecommendedAge;
  @override
  VideoLevel? get level;
  @override
  double? get minRating;
  @override
  DateTime? get uploadedAfter;
  @override
  DateTime? get uploadedBefore;
  @override
  int? get videoDuration;
  @override
  int? get ownerId;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  int get limit;
  @override
  String? get cursor;
  @override
  bool get ascending;
  @override
  VideoOrder get order;

  /// Create a copy of VideoQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoQueryFilterImplCopyWith<_$VideoQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
