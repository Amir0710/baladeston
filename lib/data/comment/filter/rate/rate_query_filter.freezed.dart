// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_query_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RateQueryFilter _$RateQueryFilterFromJson(Map<String, dynamic> json) {
  return _RateQueryFilter.fromJson(json);
}

/// @nodoc
mixin _$RateQueryFilter {
  CommentType get targetType => throw _privateConstructorUsedError;
  int get targetId => throw _privateConstructorUsedError;

  /// Serializes this RateQueryFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateQueryFilterCopyWith<RateQueryFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateQueryFilterCopyWith<$Res> {
  factory $RateQueryFilterCopyWith(
          RateQueryFilter value, $Res Function(RateQueryFilter) then) =
      _$RateQueryFilterCopyWithImpl<$Res, RateQueryFilter>;
  @useResult
  $Res call({CommentType targetType, int targetId});
}

/// @nodoc
class _$RateQueryFilterCopyWithImpl<$Res, $Val extends RateQueryFilter>
    implements $RateQueryFilterCopyWith<$Res> {
  _$RateQueryFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetType = null,
    Object? targetId = null,
  }) {
    return _then(_value.copyWith(
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateQueryFilterImplCopyWith<$Res>
    implements $RateQueryFilterCopyWith<$Res> {
  factory _$$RateQueryFilterImplCopyWith(_$RateQueryFilterImpl value,
          $Res Function(_$RateQueryFilterImpl) then) =
      __$$RateQueryFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommentType targetType, int targetId});
}

/// @nodoc
class __$$RateQueryFilterImplCopyWithImpl<$Res>
    extends _$RateQueryFilterCopyWithImpl<$Res, _$RateQueryFilterImpl>
    implements _$$RateQueryFilterImplCopyWith<$Res> {
  __$$RateQueryFilterImplCopyWithImpl(
      _$RateQueryFilterImpl _value, $Res Function(_$RateQueryFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetType = null,
    Object? targetId = null,
  }) {
    return _then(_$RateQueryFilterImpl(
      targetType: null == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateQueryFilterImpl implements _RateQueryFilter {
  const _$RateQueryFilterImpl(
      {required this.targetType, required this.targetId});

  factory _$RateQueryFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateQueryFilterImplFromJson(json);

  @override
  final CommentType targetType;
  @override
  final int targetId;

  @override
  String toString() {
    return 'RateQueryFilter(targetType: $targetType, targetId: $targetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateQueryFilterImpl &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, targetType, targetId);

  /// Create a copy of RateQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateQueryFilterImplCopyWith<_$RateQueryFilterImpl> get copyWith =>
      __$$RateQueryFilterImplCopyWithImpl<_$RateQueryFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateQueryFilterImplToJson(
      this,
    );
  }
}

abstract class _RateQueryFilter implements RateQueryFilter {
  const factory _RateQueryFilter(
      {required final CommentType targetType,
      required final int targetId}) = _$RateQueryFilterImpl;

  factory _RateQueryFilter.fromJson(Map<String, dynamic> json) =
      _$RateQueryFilterImpl.fromJson;

  @override
  CommentType get targetType;
  @override
  int get targetId;

  /// Create a copy of RateQueryFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateQueryFilterImplCopyWith<_$RateQueryFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
