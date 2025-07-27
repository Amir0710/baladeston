// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is VideoState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'VideoState()';
  }
}

/// @nodoc
class $VideoStateCopyWith<$Res> {
  $VideoStateCopyWith(VideoState _, $Res Function(VideoState) __);
}

/// Adds pattern-matching-related methods to [VideoState].
extension VideoStatePatterns on VideoState {
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
    TResult Function(_VideosLoaded value)? videosLoaded,
    TResult Function(_FavoriteVideosLoaded value)? favoriteVideosLoaded,
    TResult Function(_LastWatchPositionLoaded value)? lastWatchPositionLoaded,
    TResult Function(_IsFavoriteLoaded value)? isFavoriteLoaded,
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
      case _VideosLoaded() when videosLoaded != null:
        return videosLoaded(_that);
      case _FavoriteVideosLoaded() when favoriteVideosLoaded != null:
        return favoriteVideosLoaded(_that);
      case _LastWatchPositionLoaded() when lastWatchPositionLoaded != null:
        return lastWatchPositionLoaded(_that);
      case _IsFavoriteLoaded() when isFavoriteLoaded != null:
        return isFavoriteLoaded(_that);
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
    required TResult Function(_VideosLoaded value) videosLoaded,
    required TResult Function(_FavoriteVideosLoaded value) favoriteVideosLoaded,
    required TResult Function(_LastWatchPositionLoaded value)
        lastWatchPositionLoaded,
    required TResult Function(_IsFavoriteLoaded value) isFavoriteLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _VideosLoaded():
        return videosLoaded(_that);
      case _FavoriteVideosLoaded():
        return favoriteVideosLoaded(_that);
      case _LastWatchPositionLoaded():
        return lastWatchPositionLoaded(_that);
      case _IsFavoriteLoaded():
        return isFavoriteLoaded(_that);
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
    TResult? Function(_VideosLoaded value)? videosLoaded,
    TResult? Function(_FavoriteVideosLoaded value)? favoriteVideosLoaded,
    TResult? Function(_LastWatchPositionLoaded value)? lastWatchPositionLoaded,
    TResult? Function(_IsFavoriteLoaded value)? isFavoriteLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _VideosLoaded() when videosLoaded != null:
        return videosLoaded(_that);
      case _FavoriteVideosLoaded() when favoriteVideosLoaded != null:
        return favoriteVideosLoaded(_that);
      case _LastWatchPositionLoaded() when lastWatchPositionLoaded != null:
        return lastWatchPositionLoaded(_that);
      case _IsFavoriteLoaded() when isFavoriteLoaded != null:
        return isFavoriteLoaded(_that);
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
    TResult Function(List<VideoEntity> videos)? videosLoaded,
    TResult Function(List<VideoEntity>? videos)? favoriteVideosLoaded,
    TResult Function(int position)? lastWatchPositionLoaded,
    TResult Function(bool isFavorite)? isFavoriteLoaded,
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
      case _VideosLoaded() when videosLoaded != null:
        return videosLoaded(_that.videos);
      case _FavoriteVideosLoaded() when favoriteVideosLoaded != null:
        return favoriteVideosLoaded(_that.videos);
      case _LastWatchPositionLoaded() when lastWatchPositionLoaded != null:
        return lastWatchPositionLoaded(_that.position);
      case _IsFavoriteLoaded() when isFavoriteLoaded != null:
        return isFavoriteLoaded(_that.isFavorite);
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
    required TResult Function(List<VideoEntity> videos) videosLoaded,
    required TResult Function(List<VideoEntity>? videos) favoriteVideosLoaded,
    required TResult Function(int position) lastWatchPositionLoaded,
    required TResult Function(bool isFavorite) isFavoriteLoaded,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _VideosLoaded():
        return videosLoaded(_that.videos);
      case _FavoriteVideosLoaded():
        return favoriteVideosLoaded(_that.videos);
      case _LastWatchPositionLoaded():
        return lastWatchPositionLoaded(_that.position);
      case _IsFavoriteLoaded():
        return isFavoriteLoaded(_that.isFavorite);
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
    TResult? Function(List<VideoEntity> videos)? videosLoaded,
    TResult? Function(List<VideoEntity>? videos)? favoriteVideosLoaded,
    TResult? Function(int position)? lastWatchPositionLoaded,
    TResult? Function(bool isFavorite)? isFavoriteLoaded,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _VideosLoaded() when videosLoaded != null:
        return videosLoaded(_that.videos);
      case _FavoriteVideosLoaded() when favoriteVideosLoaded != null:
        return favoriteVideosLoaded(_that.videos);
      case _LastWatchPositionLoaded() when lastWatchPositionLoaded != null:
        return lastWatchPositionLoaded(_that.position);
      case _IsFavoriteLoaded() when isFavoriteLoaded != null:
        return isFavoriteLoaded(_that.isFavorite);
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

class _Initial implements VideoState {
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
    return 'VideoState.initial()';
  }
}

/// @nodoc

class _Loading implements VideoState {
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
    return 'VideoState.loading()';
  }
}

/// @nodoc

class _VideosLoaded implements VideoState {
  const _VideosLoaded({required final List<VideoEntity> videos})
      : _videos = videos;

  final List<VideoEntity> _videos;
  List<VideoEntity> get videos {
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideosLoadedCopyWith<_VideosLoaded> get copyWith =>
      __$VideosLoadedCopyWithImpl<_VideosLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideosLoaded &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @override
  String toString() {
    return 'VideoState.videosLoaded(videos: $videos)';
  }
}

/// @nodoc
abstract mixin class _$VideosLoadedCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$VideosLoadedCopyWith(
          _VideosLoaded value, $Res Function(_VideosLoaded) _then) =
      __$VideosLoadedCopyWithImpl;
  @useResult
  $Res call({List<VideoEntity> videos});
}

/// @nodoc
class __$VideosLoadedCopyWithImpl<$Res>
    implements _$VideosLoadedCopyWith<$Res> {
  __$VideosLoadedCopyWithImpl(this._self, this._then);

  final _VideosLoaded _self;
  final $Res Function(_VideosLoaded) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videos = null,
  }) {
    return _then(_VideosLoaded(
      videos: null == videos
          ? _self._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
    ));
  }
}

/// @nodoc

class _FavoriteVideosLoaded implements VideoState {
  const _FavoriteVideosLoaded({required final List<VideoEntity>? videos})
      : _videos = videos;

  final List<VideoEntity>? _videos;
  List<VideoEntity>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoriteVideosLoadedCopyWith<_FavoriteVideosLoaded> get copyWith =>
      __$FavoriteVideosLoadedCopyWithImpl<_FavoriteVideosLoaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteVideosLoaded &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @override
  String toString() {
    return 'VideoState.favoriteVideosLoaded(videos: $videos)';
  }
}

/// @nodoc
abstract mixin class _$FavoriteVideosLoadedCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$FavoriteVideosLoadedCopyWith(_FavoriteVideosLoaded value,
          $Res Function(_FavoriteVideosLoaded) _then) =
      __$FavoriteVideosLoadedCopyWithImpl;
  @useResult
  $Res call({List<VideoEntity>? videos});
}

/// @nodoc
class __$FavoriteVideosLoadedCopyWithImpl<$Res>
    implements _$FavoriteVideosLoadedCopyWith<$Res> {
  __$FavoriteVideosLoadedCopyWithImpl(this._self, this._then);

  final _FavoriteVideosLoaded _self;
  final $Res Function(_FavoriteVideosLoaded) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_FavoriteVideosLoaded(
      videos: freezed == videos
          ? _self._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>?,
    ));
  }
}

/// @nodoc

class _LastWatchPositionLoaded implements VideoState {
  const _LastWatchPositionLoaded({required this.position});

  final int position;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LastWatchPositionLoadedCopyWith<_LastWatchPositionLoaded> get copyWith =>
      __$LastWatchPositionLoadedCopyWithImpl<_LastWatchPositionLoaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastWatchPositionLoaded &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @override
  String toString() {
    return 'VideoState.lastWatchPositionLoaded(position: $position)';
  }
}

/// @nodoc
abstract mixin class _$LastWatchPositionLoadedCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$LastWatchPositionLoadedCopyWith(_LastWatchPositionLoaded value,
          $Res Function(_LastWatchPositionLoaded) _then) =
      __$LastWatchPositionLoadedCopyWithImpl;
  @useResult
  $Res call({int position});
}

/// @nodoc
class __$LastWatchPositionLoadedCopyWithImpl<$Res>
    implements _$LastWatchPositionLoadedCopyWith<$Res> {
  __$LastWatchPositionLoadedCopyWithImpl(this._self, this._then);

  final _LastWatchPositionLoaded _self;
  final $Res Function(_LastWatchPositionLoaded) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? position = null,
  }) {
    return _then(_LastWatchPositionLoaded(
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _IsFavoriteLoaded implements VideoState {
  const _IsFavoriteLoaded({required this.isFavorite});

  final bool isFavorite;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IsFavoriteLoadedCopyWith<_IsFavoriteLoaded> get copyWith =>
      __$IsFavoriteLoadedCopyWithImpl<_IsFavoriteLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsFavoriteLoaded &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  @override
  String toString() {
    return 'VideoState.isFavoriteLoaded(isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class _$IsFavoriteLoadedCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$IsFavoriteLoadedCopyWith(
          _IsFavoriteLoaded value, $Res Function(_IsFavoriteLoaded) _then) =
      __$IsFavoriteLoadedCopyWithImpl;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$IsFavoriteLoadedCopyWithImpl<$Res>
    implements _$IsFavoriteLoadedCopyWith<$Res> {
  __$IsFavoriteLoadedCopyWithImpl(this._self, this._then);

  final _IsFavoriteLoaded _self;
  final $Res Function(_IsFavoriteLoaded) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_IsFavoriteLoaded(
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Success implements VideoState {
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
    return 'VideoState.success()';
  }
}

/// @nodoc

class _Failure implements VideoState {
  const _Failure({required this.message});

  final String message;

  /// Create a copy of VideoState
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
    return 'VideoState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
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

  /// Create a copy of VideoState
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
