// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentQueryFilter _$CommentQueryFilterFromJson(Map<String, dynamic> json) {
  return _CommentQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$CommentQueryFilter {
  int? get userId => throw _privateConstructorUsedError;
  int? get targetId => throw _privateConstructorUsedError;
  CommentType? get commentType => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get searchTerm => throw _privateConstructorUsedError;
  double? get minRating => throw _privateConstructorUsedError;
  double? get maxRating => throw _privateConstructorUsedError;
  DateTime? get createdAfter => throw _privateConstructorUsedError;
  DateTime? get createdBefore => throw _privateConstructorUsedError;
  CommentStatus? get status => throw _privateConstructorUsedError;
  String get orderBy => throw _privateConstructorUsedError;
  bool get ascending => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this CommentQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentQueryFilterCopyWith<CommentQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentQueryFilterCopyWith<$Res> {
  factory $CommentQueryFilterCopyWith(
          CommentQueryFilter value, $Res Function(CommentQueryFilter) then) =
      _$CommentQueryFilterCopyWithImpl<$Res, CommentQueryFilter>;
  @useResult
  $Res call(
      {int? userId,
      int? targetId,
      CommentType? commentType,
      String? content,
      String? searchTerm,
      double? minRating,
      double? maxRating,
      DateTime? createdAfter,
      DateTime? createdBefore,
      CommentStatus? status,
      String orderBy,
      bool ascending,
      int limit,
      int offset});
}

/// @nodoc
class _$CommentQueryFilterCopyWithImpl<$Res, $Val extends CommentQueryFilter>
    implements $CommentQueryFilterCopyWith<$Res> {
  _$CommentQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? targetId = freezed,
    Object? commentType = freezed,
    Object? content = freezed,
    Object? searchTerm = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? status = freezed,
    Object? orderBy = null,
    Object? ascending = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentType: freezed == commentType
          ? _value.commentType
          : commentType // ignore: cast_nullable_to_non_nullable
              as CommentType?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRating: freezed == maxRating
          ? _value.maxRating
          : maxRating // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus?,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentQueryFilterImplCopyWith<$Res>
    implements $CommentQueryFilterCopyWith<$Res> {
  factory _$$CommentQueryFilterImplCopyWith(_$CommentQueryFilterImpl value,
          $Res Function(_$CommentQueryFilterImpl) then) =
      __$$CommentQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? targetId,
      CommentType? commentType,
      String? content,
      String? searchTerm,
      double? minRating,
      double? maxRating,
      DateTime? createdAfter,
      DateTime? createdBefore,
      CommentStatus? status,
      String orderBy,
      bool ascending,
      int limit,
      int offset});
}

/// @nodoc
class __$$CommentQueryFilterImplCopyWithImpl<$Res>
    extends _$CommentQueryFilterCopyWithImpl<$Res, _$CommentQueryFilterImpl>
    implements _$$CommentQueryFilterImplCopyWith<$Res> {
  __$$CommentQueryFilterImplCopyWithImpl(_$CommentQueryFilterImpl _value,
      $Res Function(_$CommentQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? targetId = freezed,
    Object? commentType = freezed,
    Object? content = freezed,
    Object? searchTerm = freezed,
    Object? minRating = freezed,
    Object? maxRating = freezed,
    Object? createdAfter = freezed,
    Object? createdBefore = freezed,
    Object? status = freezed,
    Object? orderBy = null,
    Object? ascending = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$CommentQueryFilterImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentType: freezed == commentType
          ? _value.commentType
          : commentType // ignore: cast_nullable_to_non_nullable
              as CommentType?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      searchTerm: freezed == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String?,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRating: freezed == maxRating
          ? _value.maxRating
          : maxRating // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAfter: freezed == createdAfter
          ? _value.createdAfter
          : createdAfter // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBefore: freezed == createdBefore
          ? _value.createdBefore
          : createdBefore // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus?,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentQueryFilterImpl implements _CommentQueryFilter {
  const _$CommentQueryFilterImpl(
      {this.userId,
      this.targetId,
      this.commentType,
      this.content,
      this.searchTerm,
      this.minRating,
      this.maxRating,
      this.createdAfter,
      this.createdBefore,
      this.status,
      this.orderBy = 'createdAt',
      this.ascending = false,
      this.limit = 20,
      this.offset = 0});

  factory _$CommentQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentQueryFilterImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? targetId;
  @override
  final CommentType? commentType;
  @override
  final String? content;
  @override
  final String? searchTerm;
  @override
  final double? minRating;
  @override
  final double? maxRating;
  @override
  final DateTime? createdAfter;
  @override
  final DateTime? createdBefore;
  @override
  final CommentStatus? status;
  @override
  @JsonKey()
  final String orderBy;
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
  String toString() {
    return 'CommentQueryFilter(userId: $userId, targetId: $targetId, commentType: $commentType, content: $content, searchTerm: $searchTerm, minRating: $minRating, maxRating: $maxRating, createdAfter: $createdAfter, createdBefore: $createdBefore, status: $status, orderBy: $orderBy, ascending: $ascending, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentQueryFilterImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.commentType, commentType) ||
                other.commentType == commentType) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating) &&
            (identical(other.maxRating, maxRating) ||
                other.maxRating == maxRating) &&
            (identical(other.createdAfter, createdAfter) ||
                other.createdAfter == createdAfter) &&
            (identical(other.createdBefore, createdBefore) ||
                other.createdBefore == createdBefore) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      targetId,
      commentType,
      content,
      searchTerm,
      minRating,
      maxRating,
      createdAfter,
      createdBefore,
      status,
      orderBy,
      ascending,
      limit,
      offset);

  /// Create a copy of CommentQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentQueryFilterImplCopyWith<_$CommentQueryFilterImpl> get copyWith =>
      __$$CommentQueryFilterImplCopyWithImpl<_$CommentQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _CommentQueryFilter implements CommentQueryFilter {
  const factory _CommentQueryFilter(
      {final int? userId,
      final int? targetId,
      final CommentType? commentType,
      final String? content,
      final String? searchTerm,
      final double? minRating,
      final double? maxRating,
      final DateTime? createdAfter,
      final DateTime? createdBefore,
      final CommentStatus? status,
      final String orderBy,
      final bool ascending,
      final int limit,
      final int offset}) = _$CommentQueryFilterImpl;

  factory _CommentQueryFilter.fromJson(Map<String, dynamic> json) =
      _$CommentQueryFilterImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get targetId;
  @override
  CommentType? get commentType;
  @override
  String? get content;
  @override
  String? get searchTerm;
  @override
  double? get minRating;
  @override
  double? get maxRating;
  @override
  DateTime? get createdAfter;
  @override
  DateTime? get createdBefore;
  @override
  CommentStatus? get status;
  @override
  String get orderBy;
  @override
  bool get ascending;
  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of CommentQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentQueryFilterImplCopyWith<_$CommentQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
