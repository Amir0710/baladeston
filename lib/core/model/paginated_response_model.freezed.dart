// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedResponseModel<T> _$PaginatedResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedResponseModel<T> {
  List<T> get items => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;

  /// Serializes this PaginatedResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginatedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedResponseModelCopyWith<T, PaginatedResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResponseModelCopyWith<T, $Res> {
  factory $PaginatedResponseModelCopyWith(PaginatedResponseModel<T> value,
          $Res Function(PaginatedResponseModel<T>) then) =
      _$PaginatedResponseModelCopyWithImpl<T, $Res, PaginatedResponseModel<T>>;
  @useResult
  $Res call({List<T> items, String? nextCursor, bool isLast});
}

/// @nodoc
class _$PaginatedResponseModelCopyWithImpl<T, $Res,
        $Val extends PaginatedResponseModel<T>>
    implements $PaginatedResponseModelCopyWith<T, $Res> {
  _$PaginatedResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? isLast = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedResponseModelImplCopyWith<T, $Res>
    implements $PaginatedResponseModelCopyWith<T, $Res> {
  factory _$$PaginatedResponseModelImplCopyWith(
          _$PaginatedResponseModelImpl<T> value,
          $Res Function(_$PaginatedResponseModelImpl<T>) then) =
      __$$PaginatedResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> items, String? nextCursor, bool isLast});
}

/// @nodoc
class __$$PaginatedResponseModelImplCopyWithImpl<T, $Res>
    extends _$PaginatedResponseModelCopyWithImpl<T, $Res,
        _$PaginatedResponseModelImpl<T>>
    implements _$$PaginatedResponseModelImplCopyWith<T, $Res> {
  __$$PaginatedResponseModelImplCopyWithImpl(
      _$PaginatedResponseModelImpl<T> _value,
      $Res Function(_$PaginatedResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? isLast = null,
  }) {
    return _then(_$PaginatedResponseModelImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      isLast: null == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginatedResponseModelImpl<T> implements _PaginatedResponseModel<T> {
  const _$PaginatedResponseModelImpl(
      {required final List<T> items, this.nextCursor, this.isLast = false})
      : _items = items;

  factory _$PaginatedResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginatedResponseModelImplFromJson(json, fromJsonT);

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextCursor;
  @override
  @JsonKey()
  final bool isLast;

  @override
  String toString() {
    return 'PaginatedResponseModel<$T>(items: $items, nextCursor: $nextCursor, isLast: $isLast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedResponseModelImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.isLast, isLast) || other.isLast == isLast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), nextCursor, isLast);

  /// Create a copy of PaginatedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedResponseModelImplCopyWith<T, _$PaginatedResponseModelImpl<T>>
      get copyWith => __$$PaginatedResponseModelImplCopyWithImpl<T,
          _$PaginatedResponseModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginatedResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedResponseModel<T> implements PaginatedResponseModel<T> {
  const factory _PaginatedResponseModel(
      {required final List<T> items,
      final String? nextCursor,
      final bool isLast}) = _$PaginatedResponseModelImpl<T>;

  factory _PaginatedResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginatedResponseModelImpl<T>.fromJson;

  @override
  List<T> get items;
  @override
  String? get nextCursor;
  @override
  bool get isLast;

  /// Create a copy of PaginatedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedResponseModelImplCopyWith<T, _$PaginatedResponseModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
