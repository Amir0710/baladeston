// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> user, int count});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? count = null,
  }) {
    return _then(_$SuccessImpl(
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<UserEntity> user, required this.count})
      : _user = user;

  final List<UserEntity> _user;
  @override
  List<UserEntity> get user {
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  final int count;

  @override
  String toString() {
    return 'UserState.success(user: $user, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_user), count);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return success(user, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return success?.call(user, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UserState {
  const factory _Success(
      {required final List<UserEntity> user,
      required final int count}) = _$SuccessImpl;

  List<UserEntity> get user;
  int get count;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements UserState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'UserState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements UserState {
  const factory _LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$TokenValidImplCopyWith<$Res> {
  factory _$$TokenValidImplCopyWith(
          _$TokenValidImpl value, $Res Function(_$TokenValidImpl) then) =
      __$$TokenValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenValidImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$TokenValidImpl>
    implements _$$TokenValidImplCopyWith<$Res> {
  __$$TokenValidImplCopyWithImpl(
      _$TokenValidImpl _value, $Res Function(_$TokenValidImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TokenValidImpl implements _TokenValid {
  const _$TokenValidImpl();

  @override
  String toString() {
    return 'UserState.tokenValid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return tokenValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return tokenValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (tokenValid != null) {
      return tokenValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return tokenValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return tokenValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (tokenValid != null) {
      return tokenValid(this);
    }
    return orElse();
  }
}

abstract class _TokenValid implements UserState {
  const factory _TokenValid() = _$TokenValidImpl;
}

/// @nodoc
abstract class _$$TokenInvalidImplCopyWith<$Res> {
  factory _$$TokenInvalidImplCopyWith(
          _$TokenInvalidImpl value, $Res Function(_$TokenInvalidImpl) then) =
      __$$TokenInvalidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TokenInvalidImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$TokenInvalidImpl>
    implements _$$TokenInvalidImplCopyWith<$Res> {
  __$$TokenInvalidImplCopyWithImpl(
      _$TokenInvalidImpl _value, $Res Function(_$TokenInvalidImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TokenInvalidImpl implements _TokenInvalid {
  const _$TokenInvalidImpl();

  @override
  String toString() {
    return 'UserState.tokenInvalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TokenInvalidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserEntity> user, int count) success,
    required TResult Function(String message) failure,
    required TResult Function() loginSuccess,
    required TResult Function() tokenValid,
    required TResult Function() tokenInvalid,
  }) {
    return tokenInvalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserEntity> user, int count)? success,
    TResult? Function(String message)? failure,
    TResult? Function()? loginSuccess,
    TResult? Function()? tokenValid,
    TResult? Function()? tokenInvalid,
  }) {
    return tokenInvalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserEntity> user, int count)? success,
    TResult Function(String message)? failure,
    TResult Function()? loginSuccess,
    TResult Function()? tokenValid,
    TResult Function()? tokenInvalid,
    required TResult orElse(),
  }) {
    if (tokenInvalid != null) {
      return tokenInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_TokenValid value) tokenValid,
    required TResult Function(_TokenInvalid value) tokenInvalid,
  }) {
    return tokenInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_TokenValid value)? tokenValid,
    TResult? Function(_TokenInvalid value)? tokenInvalid,
  }) {
    return tokenInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_TokenValid value)? tokenValid,
    TResult Function(_TokenInvalid value)? tokenInvalid,
    required TResult orElse(),
  }) {
    if (tokenInvalid != null) {
      return tokenInvalid(this);
    }
    return orElse();
  }
}

abstract class _TokenInvalid implements UserState {
  const factory _TokenInvalid() = _$TokenInvalidImpl;
}
