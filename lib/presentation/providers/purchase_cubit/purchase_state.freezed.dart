// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PurchaseState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PurchaseState()';
  }
}

/// @nodoc
class $PurchaseStateCopyWith<$Res> {
  $PurchaseStateCopyWith(PurchaseState _, $Res Function(PurchaseState) __);
}

/// Adds pattern-matching-related methods to [PurchaseState].
extension PurchaseStatePatterns on PurchaseState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ListLoaded value)? listLoaded,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _ListLoaded() when listLoaded != null:
        return listLoaded(_that);
      case _DetailLoaded() when detailLoaded != null:
        return detailLoaded(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ListLoaded value) listLoaded,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _ListLoaded():
        return listLoaded(_that);
      case _DetailLoaded():
        return detailLoaded(_that);
      case _Success():
        return success(_that);
      case _Failure():
        return failure(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ListLoaded value)? listLoaded,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _ListLoaded() when listLoaded != null:
        return listLoaded(_that);
      case _DetailLoaded() when detailLoaded != null:
        return detailLoaded(_that);
      case _Success() when success != null:
        return success(_that);
      case _Failure() when failure != null:
        return failure(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PurchaseEntity> purchases)? listLoaded,
    TResult Function(PurchaseEntity purchase)? detailLoaded,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _ListLoaded() when listLoaded != null:
        return listLoaded(_that.purchases);
      case _DetailLoaded() when detailLoaded != null:
        return detailLoaded(_that.purchase);
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PurchaseEntity> purchases) listLoaded,
    required TResult Function(PurchaseEntity purchase) detailLoaded,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _ListLoaded():
        return listLoaded(_that.purchases);
      case _DetailLoaded():
        return detailLoaded(_that.purchase);
      case _Success():
        return success();
      case _Failure():
        return failure(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PurchaseEntity> purchases)? listLoaded,
    TResult? Function(PurchaseEntity purchase)? detailLoaded,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _ListLoaded() when listLoaded != null:
        return listLoaded(_that.purchases);
      case _DetailLoaded() when detailLoaded != null:
        return detailLoaded(_that.purchase);
      case _Success() when success != null:
        return success();
      case _Failure() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements PurchaseState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PurchaseState.initial()';
  }
}

/// @nodoc

class _Loading implements PurchaseState {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PurchaseState.loading()';
  }
}

/// @nodoc

class _ListLoaded implements PurchaseState {
  const _ListLoaded({required final List<PurchaseEntity> purchases})
      : _purchases = purchases;

  final List<PurchaseEntity> _purchases;
  List<PurchaseEntity> get purchases {
    if (_purchases is EqualUnmodifiableListView) return _purchases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchases);
  }

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListLoadedCopyWith<_ListLoaded> get copyWith =>
      __$ListLoadedCopyWithImpl<_ListLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListLoaded &&
            const DeepCollectionEquality()
                .equals(other._purchases, _purchases));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_purchases));

  @override
  String toString() {
    return 'PurchaseState.listLoaded(purchases: $purchases)';
  }
}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(
          _ListLoaded value, $Res Function(_ListLoaded) _then) =
      __$ListLoadedCopyWithImpl;
  @useResult
  $Res call({List<PurchaseEntity> purchases});
}

/// @nodoc
class __$ListLoadedCopyWithImpl<$Res> implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchases = null,
  }) {
    return _then(_ListLoaded(
      purchases: null == purchases
          ? _self._purchases
          : purchases // ignore: cast_nullable_to_non_nullable
              as List<PurchaseEntity>,
    ));
  }
}

/// @nodoc

class _DetailLoaded implements PurchaseState {
  const _DetailLoaded({required this.purchase});

  final PurchaseEntity purchase;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailLoadedCopyWith<_DetailLoaded> get copyWith =>
      __$DetailLoadedCopyWithImpl<_DetailLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailLoaded &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, purchase);

  @override
  String toString() {
    return 'PurchaseState.detailLoaded(purchase: $purchase)';
  }
}

/// @nodoc
abstract mixin class _$DetailLoadedCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$DetailLoadedCopyWith(
          _DetailLoaded value, $Res Function(_DetailLoaded) _then) =
      __$DetailLoadedCopyWithImpl;
  @useResult
  $Res call({PurchaseEntity purchase});

  $PurchaseEntityCopyWith<$Res> get purchase;
}

/// @nodoc
class __$DetailLoadedCopyWithImpl<$Res>
    implements _$DetailLoadedCopyWith<$Res> {
  __$DetailLoadedCopyWithImpl(this._self, this._then);

  final _DetailLoaded _self;
  final $Res Function(_DetailLoaded) _then;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? purchase = null,
  }) {
    return _then(_DetailLoaded(
      purchase: null == purchase
          ? _self.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as PurchaseEntity,
    ));
  }

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurchaseEntityCopyWith<$Res> get purchase {
    return $PurchaseEntityCopyWith<$Res>(_self.purchase, (value) {
      return _then(_self.copyWith(purchase: value));
    });
  }
}

/// @nodoc

class _Success implements PurchaseState {
  const _Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PurchaseState.success()';
  }
}

/// @nodoc

class _Failure implements PurchaseState {
  const _Failure({required this.message});

  final String message;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PurchaseState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $PurchaseStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) =
      __$FailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

  /// Create a copy of PurchaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Failure(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
