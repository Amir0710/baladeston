// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchHistoryState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchHistoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WatchHistoryState()';
  }
}

/// @nodoc
class $WatchHistoryStateCopyWith<$Res> {
  $WatchHistoryStateCopyWith(
      WatchHistoryState _, $Res Function(WatchHistoryState) __);
}

/// Adds pattern-matching-related methods to [WatchHistoryState].
extension WatchHistoryStatePatterns on WatchHistoryState {
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
    TResult Function(_Error value)? error,
    TResult Function(_LastPositionsLoaded value)? lastPositionsLoaded,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Error() when error != null:
        return error(_that);
      case _LastPositionsLoaded() when lastPositionsLoaded != null:
        return lastPositionsLoaded(_that);
      case _Success() when success != null:
        return success(_that);
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
    required TResult Function(_Error value) error,
    required TResult Function(_LastPositionsLoaded value) lastPositionsLoaded,
    required TResult Function(_Success value) success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Error():
        return error(_that);
      case _LastPositionsLoaded():
        return lastPositionsLoaded(_that);
      case _Success():
        return success(_that);
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
    TResult? Function(_Error value)? error,
    TResult? Function(_LastPositionsLoaded value)? lastPositionsLoaded,
    TResult? Function(_Success value)? success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Error() when error != null:
        return error(_that);
      case _LastPositionsLoaded() when lastPositionsLoaded != null:
        return lastPositionsLoaded(_that);
      case _Success() when success != null:
        return success(_that);
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
    TResult Function(String message)? error,
    TResult Function(List<WatchHistoryEntity> historyList)? lastPositionsLoaded,
    TResult Function(String? message)? success,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Error() when error != null:
        return error(_that.message);
      case _LastPositionsLoaded() when lastPositionsLoaded != null:
        return lastPositionsLoaded(_that.historyList);
      case _Success() when success != null:
        return success(_that.message);
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
    required TResult Function(String message) error,
    required TResult Function(List<WatchHistoryEntity> historyList)
        lastPositionsLoaded,
    required TResult Function(String? message) success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _Error():
        return error(_that.message);
      case _LastPositionsLoaded():
        return lastPositionsLoaded(_that.historyList);
      case _Success():
        return success(_that.message);
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
    TResult? Function(String message)? error,
    TResult? Function(List<WatchHistoryEntity> historyList)?
        lastPositionsLoaded,
    TResult? Function(String? message)? success,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Error() when error != null:
        return error(_that.message);
      case _LastPositionsLoaded() when lastPositionsLoaded != null:
        return lastPositionsLoaded(_that.historyList);
      case _Success() when success != null:
        return success(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements WatchHistoryState {
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
    return 'WatchHistoryState.initial()';
  }
}

/// @nodoc

class _Loading implements WatchHistoryState {
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
    return 'WatchHistoryState.loading()';
  }
}

/// @nodoc

class _Error implements WatchHistoryState {
  const _Error(this.message);

  final String message;

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'WatchHistoryState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LastPositionsLoaded implements WatchHistoryState {
  const _LastPositionsLoaded(final List<WatchHistoryEntity> historyList)
      : _historyList = historyList;

  final List<WatchHistoryEntity> _historyList;
  List<WatchHistoryEntity> get historyList {
    if (_historyList is EqualUnmodifiableListView) return _historyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyList);
  }

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LastPositionsLoadedCopyWith<_LastPositionsLoaded> get copyWith =>
      __$LastPositionsLoadedCopyWithImpl<_LastPositionsLoaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastPositionsLoaded &&
            const DeepCollectionEquality()
                .equals(other._historyList, _historyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_historyList));

  @override
  String toString() {
    return 'WatchHistoryState.lastPositionsLoaded(historyList: $historyList)';
  }
}

/// @nodoc
abstract mixin class _$LastPositionsLoadedCopyWith<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  factory _$LastPositionsLoadedCopyWith(_LastPositionsLoaded value,
          $Res Function(_LastPositionsLoaded) _then) =
      __$LastPositionsLoadedCopyWithImpl;
  @useResult
  $Res call({List<WatchHistoryEntity> historyList});
}

/// @nodoc
class __$LastPositionsLoadedCopyWithImpl<$Res>
    implements _$LastPositionsLoadedCopyWith<$Res> {
  __$LastPositionsLoadedCopyWithImpl(this._self, this._then);

  final _LastPositionsLoaded _self;
  final $Res Function(_LastPositionsLoaded) _then;

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? historyList = null,
  }) {
    return _then(_LastPositionsLoaded(
      null == historyList
          ? _self._historyList
          : historyList // ignore: cast_nullable_to_non_nullable
              as List<WatchHistoryEntity>,
    ));
  }
}

/// @nodoc

class _Success implements WatchHistoryState {
  const _Success([this.message]);

  final String? message;

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'WatchHistoryState.success(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res>
    implements $WatchHistoryStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) =
      __$SuccessCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

  /// Create a copy of WatchHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Success(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
