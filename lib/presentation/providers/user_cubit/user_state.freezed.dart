// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState()';
  }
}

/// @nodoc
class $UserStateCopyWith<$Res> {
  $UserStateCopyWith(UserState _, $Res Function(UserState) __);
}

/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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
    TResult Function(_UsersLoaded value)? usersLoaded,
    TResult Function(_CurrentUserLoaded value)? currentUserLoaded,
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
      case _UsersLoaded() when usersLoaded != null:
        return usersLoaded(_that);
      case _CurrentUserLoaded() when currentUserLoaded != null:
        return currentUserLoaded(_that);
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
    required TResult Function(_UsersLoaded value) usersLoaded,
    required TResult Function(_CurrentUserLoaded value) currentUserLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _UsersLoaded():
        return usersLoaded(_that);
      case _CurrentUserLoaded():
        return currentUserLoaded(_that);
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
    TResult? Function(_UsersLoaded value)? usersLoaded,
    TResult? Function(_CurrentUserLoaded value)? currentUserLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _UsersLoaded() when usersLoaded != null:
        return usersLoaded(_that);
      case _CurrentUserLoaded() when currentUserLoaded != null:
        return currentUserLoaded(_that);
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
    TResult Function(List<UserEntity> users)? usersLoaded,
    TResult Function(UserEntity user)? currentUserLoaded,
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
      case _UsersLoaded() when usersLoaded != null:
        return usersLoaded(_that.users);
      case _CurrentUserLoaded() when currentUserLoaded != null:
        return currentUserLoaded(_that.user);
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
    required TResult Function(List<UserEntity> users) usersLoaded,
    required TResult Function(UserEntity user) currentUserLoaded,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _UsersLoaded():
        return usersLoaded(_that.users);
      case _CurrentUserLoaded():
        return currentUserLoaded(_that.user);
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
    TResult? Function(List<UserEntity> users)? usersLoaded,
    TResult? Function(UserEntity user)? currentUserLoaded,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _UsersLoaded() when usersLoaded != null:
        return usersLoaded(_that.users);
      case _CurrentUserLoaded() when currentUserLoaded != null:
        return currentUserLoaded(_that.user);
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

class _Initial implements UserState {
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
    return 'UserState.initial()';
  }
}

/// @nodoc

class _Loading implements UserState {
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
    return 'UserState.loading()';
  }
}

/// @nodoc

class _UsersLoaded implements UserState {
  const _UsersLoaded({required final List<UserEntity> users}) : _users = users;

  final List<UserEntity> _users;
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsersLoadedCopyWith<_UsersLoaded> get copyWith =>
      __$UsersLoadedCopyWithImpl<_UsersLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersLoaded &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'UserState.usersLoaded(users: $users)';
  }
}

/// @nodoc
abstract mixin class _$UsersLoadedCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$UsersLoadedCopyWith(
          _UsersLoaded value, $Res Function(_UsersLoaded) _then) =
      __$UsersLoadedCopyWithImpl;
  @useResult
  $Res call({List<UserEntity> users});
}

/// @nodoc
class __$UsersLoadedCopyWithImpl<$Res> implements _$UsersLoadedCopyWith<$Res> {
  __$UsersLoadedCopyWithImpl(this._self, this._then);

  final _UsersLoaded _self;
  final $Res Function(_UsersLoaded) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
  }) {
    return _then(_UsersLoaded(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _CurrentUserLoaded implements UserState {
  const _CurrentUserLoaded({required this.user});

  final UserEntity user;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentUserLoadedCopyWith<_CurrentUserLoaded> get copyWith =>
      __$CurrentUserLoadedCopyWithImpl<_CurrentUserLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentUserLoaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserState.currentUserLoaded(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CurrentUserLoadedCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$CurrentUserLoadedCopyWith(
          _CurrentUserLoaded value, $Res Function(_CurrentUserLoaded) _then) =
      __$CurrentUserLoadedCopyWithImpl;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$CurrentUserLoadedCopyWithImpl<$Res>
    implements _$CurrentUserLoadedCopyWith<$Res> {
  __$CurrentUserLoadedCopyWithImpl(this._self, this._then);

  final _CurrentUserLoaded _self;
  final $Res Function(_CurrentUserLoaded) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(_CurrentUserLoaded(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class _Success implements UserState {
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
    return 'UserState.success()';
  }
}

/// @nodoc

class _Failure implements UserState {
  const _Failure({required this.message});

  final String message;

  /// Create a copy of UserState
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
    return 'UserState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
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

  /// Create a copy of UserState
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
