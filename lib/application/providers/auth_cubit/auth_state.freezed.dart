// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
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
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
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
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
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
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoggingInImplCopyWith<$Res> {
  factory _$$LoggingInImplCopyWith(
          _$LoggingInImpl value, $Res Function(_$LoggingInImpl) then) =
      __$$LoggingInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggingInImpl>
    implements _$$LoggingInImplCopyWith<$Res> {
  __$$LoggingInImplCopyWithImpl(
      _$LoggingInImpl _value, $Res Function(_$LoggingInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoggingInImpl implements _LoggingIn {
  const _$LoggingInImpl();

  @override
  String toString() {
    return 'AuthState.loggingIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn implements AuthState {
  const factory _LoggingIn() = _$LoggingInImpl;
}

/// @nodoc
abstract class _$$SendingOtpImplCopyWith<$Res> {
  factory _$$SendingOtpImplCopyWith(
          _$SendingOtpImpl value, $Res Function(_$SendingOtpImpl) then) =
      __$$SendingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SendingOtpImpl>
    implements _$$SendingOtpImplCopyWith<$Res> {
  __$$SendingOtpImplCopyWithImpl(
      _$SendingOtpImpl _value, $Res Function(_$SendingOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingOtpImpl implements _SendingOtp {
  const _$SendingOtpImpl();

  @override
  String toString() {
    return 'AuthState.sendingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return sendingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return sendingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return sendingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return sendingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp(this);
    }
    return orElse();
  }
}

abstract class _SendingOtp implements AuthState {
  const factory _SendingOtp() = _$SendingOtpImpl;
}

/// @nodoc
abstract class _$$CheckingTokenImplCopyWith<$Res> {
  factory _$$CheckingTokenImplCopyWith(
          _$CheckingTokenImpl value, $Res Function(_$CheckingTokenImpl) then) =
      __$$CheckingTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingTokenImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CheckingTokenImpl>
    implements _$$CheckingTokenImplCopyWith<$Res> {
  __$$CheckingTokenImplCopyWithImpl(
      _$CheckingTokenImpl _value, $Res Function(_$CheckingTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingTokenImpl implements _CheckingToken {
  const _$CheckingTokenImpl();

  @override
  String toString() {
    return 'AuthState.checkingToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return checkingToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return checkingToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (checkingToken != null) {
      return checkingToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return checkingToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return checkingToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkingToken != null) {
      return checkingToken(this);
    }
    return orElse();
  }
}

abstract class _CheckingToken implements AuthState {
  const factory _CheckingToken() = _$CheckingTokenImpl;
}

/// @nodoc
abstract class _$$CheckingUserExistsImplCopyWith<$Res> {
  factory _$$CheckingUserExistsImplCopyWith(_$CheckingUserExistsImpl value,
          $Res Function(_$CheckingUserExistsImpl) then) =
      __$$CheckingUserExistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingUserExistsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CheckingUserExistsImpl>
    implements _$$CheckingUserExistsImplCopyWith<$Res> {
  __$$CheckingUserExistsImplCopyWithImpl(_$CheckingUserExistsImpl _value,
      $Res Function(_$CheckingUserExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingUserExistsImpl implements _CheckingUserExists {
  const _$CheckingUserExistsImpl();

  @override
  String toString() {
    return 'AuthState.checkingUserExists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingUserExistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return checkingUserExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return checkingUserExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (checkingUserExists != null) {
      return checkingUserExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return checkingUserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return checkingUserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (checkingUserExists != null) {
      return checkingUserExists(this);
    }
    return orElse();
  }
}

abstract class _CheckingUserExists implements AuthState {
  const factory _CheckingUserExists() = _$CheckingUserExistsImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$OtpSentImplCopyWith<$Res> {
  factory _$$OtpSentImplCopyWith(
          _$OtpSentImpl value, $Res Function(_$OtpSentImpl) then) =
      __$$OtpSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerificationEntity verification});

  $VerificationEntityCopyWith<$Res> get verification;
}

/// @nodoc
class __$$OtpSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpSentImpl>
    implements _$$OtpSentImplCopyWith<$Res> {
  __$$OtpSentImplCopyWithImpl(
      _$OtpSentImpl _value, $Res Function(_$OtpSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verification = null,
  }) {
    return _then(_$OtpSentImpl(
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as VerificationEntity,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationEntityCopyWith<$Res> get verification {
    return $VerificationEntityCopyWith<$Res>(_value.verification, (value) {
      return _then(_value.copyWith(verification: value));
    });
  }
}

/// @nodoc

class _$OtpSentImpl implements _OtpSent {
  const _$OtpSentImpl({required this.verification});

  @override
  final VerificationEntity verification;

  @override
  String toString() {
    return 'AuthState.otpSent(verification: $verification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSentImpl &&
            (identical(other.verification, verification) ||
                other.verification == verification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verification);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      __$$OtpSentImplCopyWithImpl<_$OtpSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return otpSent(verification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return otpSent?.call(verification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(verification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class _OtpSent implements AuthState {
  const factory _OtpSent({required final VerificationEntity verification}) =
      _$OtpSentImpl;

  VerificationEntity get verification;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenCheckedImplCopyWith<$Res> {
  factory _$$TokenCheckedImplCopyWith(
          _$TokenCheckedImpl value, $Res Function(_$TokenCheckedImpl) then) =
      __$$TokenCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class __$$TokenCheckedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$TokenCheckedImpl>
    implements _$$TokenCheckedImplCopyWith<$Res> {
  __$$TokenCheckedImplCopyWithImpl(
      _$TokenCheckedImpl _value, $Res Function(_$TokenCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_$TokenCheckedImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TokenCheckedImpl implements _TokenChecked {
  const _$TokenCheckedImpl({required this.isValid});

  @override
  final bool isValid;

  @override
  String toString() {
    return 'AuthState.tokenChecked(isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenCheckedImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenCheckedImplCopyWith<_$TokenCheckedImpl> get copyWith =>
      __$$TokenCheckedImplCopyWithImpl<_$TokenCheckedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return tokenChecked(isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return tokenChecked?.call(isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (tokenChecked != null) {
      return tokenChecked(isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return tokenChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return tokenChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (tokenChecked != null) {
      return tokenChecked(this);
    }
    return orElse();
  }
}

abstract class _TokenChecked implements AuthState {
  const factory _TokenChecked({required final bool isValid}) =
      _$TokenCheckedImpl;

  bool get isValid;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenCheckedImplCopyWith<_$TokenCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserExistsCheckedImplCopyWith<$Res> {
  factory _$$UserExistsCheckedImplCopyWith(_$UserExistsCheckedImpl value,
          $Res Function(_$UserExistsCheckedImpl) then) =
      __$$UserExistsCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class __$$UserExistsCheckedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserExistsCheckedImpl>
    implements _$$UserExistsCheckedImplCopyWith<$Res> {
  __$$UserExistsCheckedImplCopyWithImpl(_$UserExistsCheckedImpl _value,
      $Res Function(_$UserExistsCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_$UserExistsCheckedImpl(
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserExistsCheckedImpl implements _UserExistsChecked {
  const _$UserExistsCheckedImpl({required this.exists});

  @override
  final bool exists;

  @override
  String toString() {
    return 'AuthState.userExistsChecked(exists: $exists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExistsCheckedImpl &&
            (identical(other.exists, exists) || other.exists == exists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exists);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistsCheckedImplCopyWith<_$UserExistsCheckedImpl> get copyWith =>
      __$$UserExistsCheckedImplCopyWithImpl<_$UserExistsCheckedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return userExistsChecked(exists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return userExistsChecked?.call(exists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (userExistsChecked != null) {
      return userExistsChecked(exists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return userExistsChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return userExistsChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (userExistsChecked != null) {
      return userExistsChecked(this);
    }
    return orElse();
  }
}

abstract class _UserExistsChecked implements AuthState {
  const factory _UserExistsChecked({required final bool exists}) =
      _$UserExistsCheckedImpl;

  bool get exists;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserExistsCheckedImplCopyWith<_$UserExistsCheckedImpl> get copyWith =>
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
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
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
    return 'AuthState.failure(message: $message)';
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

  /// Create a copy of AuthState
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
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
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
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateError error, String? errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthStateError,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error, required this.errorMessage});

  @override
  final AuthStateError error;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState.error(error: $error, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loggingIn,
    required TResult Function() sendingOtp,
    required TResult Function() checkingToken,
    required TResult Function() checkingUserExists,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(VerificationEntity verification) otpSent,
    required TResult Function(bool isValid) tokenChecked,
    required TResult Function(bool exists) userExistsChecked,
    required TResult Function(String message) failure,
    required TResult Function(AuthStateError error, String? errorMessage) error,
  }) {
    return error(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loggingIn,
    TResult? Function()? sendingOtp,
    TResult? Function()? checkingToken,
    TResult? Function()? checkingUserExists,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(VerificationEntity verification)? otpSent,
    TResult? Function(bool isValid)? tokenChecked,
    TResult? Function(bool exists)? userExistsChecked,
    TResult? Function(String message)? failure,
    TResult? Function(AuthStateError error, String? errorMessage)? error,
  }) {
    return error?.call(this.error, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loggingIn,
    TResult Function()? sendingOtp,
    TResult Function()? checkingToken,
    TResult Function()? checkingUserExists,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(VerificationEntity verification)? otpSent,
    TResult Function(bool isValid)? tokenChecked,
    TResult Function(bool exists)? userExistsChecked,
    TResult Function(String message)? failure,
    TResult Function(AuthStateError error, String? errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_CheckingToken value) checkingToken,
    required TResult Function(_CheckingUserExists value) checkingUserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_TokenChecked value) tokenChecked,
    required TResult Function(_UserExistsChecked value) userExistsChecked,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_CheckingToken value)? checkingToken,
    TResult? Function(_CheckingUserExists value)? checkingUserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_TokenChecked value)? tokenChecked,
    TResult? Function(_UserExistsChecked value)? userExistsChecked,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_CheckingToken value)? checkingToken,
    TResult Function(_CheckingUserExists value)? checkingUserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_TokenChecked value)? tokenChecked,
    TResult Function(_UserExistsChecked value)? userExistsChecked,
    TResult Function(_Failure value)? failure,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(
      {required final AuthStateError error,
      required final String? errorMessage}) = _$ErrorImpl;

  AuthStateError get error;
  String? get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
