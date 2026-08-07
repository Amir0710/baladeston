// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res, VerificationState>;
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res, $Val extends VerificationState>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationState
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
    extends _$VerificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.initial()';
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
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
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
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends VerificationState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.loading()';
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
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
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
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends VerificationState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$RequestingCodeImplCopyWith<$Res> {
  factory _$$RequestingCodeImplCopyWith(_$RequestingCodeImpl value,
          $Res Function(_$RequestingCodeImpl) then) =
      __$$RequestingCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingCodeImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$RequestingCodeImpl>
    implements _$$RequestingCodeImplCopyWith<$Res> {
  __$$RequestingCodeImplCopyWithImpl(
      _$RequestingCodeImpl _value, $Res Function(_$RequestingCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestingCodeImpl extends _RequestingCode {
  const _$RequestingCodeImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.requestingCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestingCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return requestingCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return requestingCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (requestingCode != null) {
      return requestingCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return requestingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return requestingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (requestingCode != null) {
      return requestingCode(this);
    }
    return orElse();
  }
}

abstract class _RequestingCode extends VerificationState {
  const factory _RequestingCode() = _$RequestingCodeImpl;
  const _RequestingCode._() : super._();
}

/// @nodoc
abstract class _$$CodeRequestedImplCopyWith<$Res> {
  factory _$$CodeRequestedImplCopyWith(
          _$CodeRequestedImpl value, $Res Function(_$CodeRequestedImpl) then) =
      __$$CodeRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerificationResponseEntity response});

  $VerificationResponseEntityCopyWith<$Res> get response;
}

/// @nodoc
class __$$CodeRequestedImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$CodeRequestedImpl>
    implements _$$CodeRequestedImplCopyWith<$Res> {
  __$$CodeRequestedImplCopyWithImpl(
      _$CodeRequestedImpl _value, $Res Function(_$CodeRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CodeRequestedImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VerificationResponseEntity,
    ));
  }

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerificationResponseEntityCopyWith<$Res> get response {
    return $VerificationResponseEntityCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$CodeRequestedImpl extends _CodeRequested {
  const _$CodeRequestedImpl({required this.response}) : super._();

  @override
  final VerificationResponseEntity response;

  @override
  String toString() {
    return 'VerificationState.codeRequested(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeRequestedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeRequestedImplCopyWith<_$CodeRequestedImpl> get copyWith =>
      __$$CodeRequestedImplCopyWithImpl<_$CodeRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return codeRequested(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return codeRequested?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (codeRequested != null) {
      return codeRequested(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return codeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return codeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (codeRequested != null) {
      return codeRequested(this);
    }
    return orElse();
  }
}

abstract class _CodeRequested extends VerificationState {
  const factory _CodeRequested(
          {required final VerificationResponseEntity response}) =
      _$CodeRequestedImpl;
  const _CodeRequested._() : super._();

  VerificationResponseEntity get response;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeRequestedImplCopyWith<_$CodeRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingLoginCodeImplCopyWith<$Res> {
  factory _$$VerifyingLoginCodeImplCopyWith(_$VerifyingLoginCodeImpl value,
          $Res Function(_$VerifyingLoginCodeImpl) then) =
      __$$VerifyingLoginCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyingLoginCodeImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerifyingLoginCodeImpl>
    implements _$$VerifyingLoginCodeImplCopyWith<$Res> {
  __$$VerifyingLoginCodeImplCopyWithImpl(_$VerifyingLoginCodeImpl _value,
      $Res Function(_$VerifyingLoginCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyingLoginCodeImpl extends _VerifyingLoginCode {
  const _$VerifyingLoginCodeImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.verifyingLoginCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyingLoginCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return verifyingLoginCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return verifyingLoginCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (verifyingLoginCode != null) {
      return verifyingLoginCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return verifyingLoginCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return verifyingLoginCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyingLoginCode != null) {
      return verifyingLoginCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyingLoginCode extends VerificationState {
  const factory _VerifyingLoginCode() = _$VerifyingLoginCodeImpl;
  const _VerifyingLoginCode._() : super._();
}

/// @nodoc
abstract class _$$LoginVerifiedImplCopyWith<$Res> {
  factory _$$LoginVerifiedImplCopyWith(
          _$LoginVerifiedImpl value, $Res Function(_$LoginVerifiedImpl) then) =
      __$$LoginVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSessionEntity session});

  $AuthSessionEntityCopyWith<$Res> get session;
}

/// @nodoc
class __$$LoginVerifiedImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$LoginVerifiedImpl>
    implements _$$LoginVerifiedImplCopyWith<$Res> {
  __$$LoginVerifiedImplCopyWithImpl(
      _$LoginVerifiedImpl _value, $Res Function(_$LoginVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$LoginVerifiedImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as AuthSessionEntity,
    ));
  }

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthSessionEntityCopyWith<$Res> get session {
    return $AuthSessionEntityCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value));
    });
  }
}

/// @nodoc

class _$LoginVerifiedImpl extends _LoginVerified {
  const _$LoginVerifiedImpl({required this.session}) : super._();

  @override
  final AuthSessionEntity session;

  @override
  String toString() {
    return 'VerificationState.loginVerified(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginVerifiedImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginVerifiedImplCopyWith<_$LoginVerifiedImpl> get copyWith =>
      __$$LoginVerifiedImplCopyWithImpl<_$LoginVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return loginVerified(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return loginVerified?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (loginVerified != null) {
      return loginVerified(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return loginVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return loginVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loginVerified != null) {
      return loginVerified(this);
    }
    return orElse();
  }
}

abstract class _LoginVerified extends VerificationState {
  const factory _LoginVerified({required final AuthSessionEntity session}) =
      _$LoginVerifiedImpl;
  const _LoginVerified._() : super._();

  AuthSessionEntity get session;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginVerifiedImplCopyWith<_$LoginVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingActionCodeImplCopyWith<$Res> {
  factory _$$VerifyingActionCodeImplCopyWith(_$VerifyingActionCodeImpl value,
          $Res Function(_$VerifyingActionCodeImpl) then) =
      __$$VerifyingActionCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyingActionCodeImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$VerifyingActionCodeImpl>
    implements _$$VerifyingActionCodeImplCopyWith<$Res> {
  __$$VerifyingActionCodeImplCopyWithImpl(_$VerifyingActionCodeImpl _value,
      $Res Function(_$VerifyingActionCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerifyingActionCodeImpl extends _VerifyingActionCode {
  const _$VerifyingActionCodeImpl() : super._();

  @override
  String toString() {
    return 'VerificationState.verifyingActionCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyingActionCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return verifyingActionCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return verifyingActionCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (verifyingActionCode != null) {
      return verifyingActionCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return verifyingActionCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return verifyingActionCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyingActionCode != null) {
      return verifyingActionCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyingActionCode extends VerificationState {
  const factory _VerifyingActionCode() = _$VerifyingActionCodeImpl;
  const _VerifyingActionCode._() : super._();
}

/// @nodoc
abstract class _$$ActionVerifiedImplCopyWith<$Res> {
  factory _$$ActionVerifiedImplCopyWith(_$ActionVerifiedImpl value,
          $Res Function(_$ActionVerifiedImpl) then) =
      __$$ActionVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$ActionVerifiedImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$ActionVerifiedImpl>
    implements _$$ActionVerifiedImplCopyWith<$Res> {
  __$$ActionVerifiedImplCopyWithImpl(
      _$ActionVerifiedImpl _value, $Res Function(_$ActionVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$ActionVerifiedImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ActionVerifiedImpl extends _ActionVerified {
  const _$ActionVerifiedImpl({required this.success}) : super._();

  @override
  final bool success;

  @override
  String toString() {
    return 'VerificationState.actionVerified(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionVerifiedImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionVerifiedImplCopyWith<_$ActionVerifiedImpl> get copyWith =>
      __$$ActionVerifiedImplCopyWithImpl<_$ActionVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return actionVerified(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return actionVerified?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (actionVerified != null) {
      return actionVerified(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return actionVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return actionVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (actionVerified != null) {
      return actionVerified(this);
    }
    return orElse();
  }
}

abstract class _ActionVerified extends VerificationState {
  const factory _ActionVerified({required final bool success}) =
      _$ActionVerifiedImpl;
  const _ActionVerified._() : super._();

  bool get success;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionVerifiedImplCopyWith<_$ActionVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VerificationStateError error, VerificationFailure failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as VerificationStateError,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as VerificationFailure,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.error, required this.failure}) : super._();

  @override
  final VerificationStateError error;
  @override
  final VerificationFailure failure;

  @override
  String toString() {
    return 'VerificationState.error(error: $error, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, failure);

  /// Create a copy of VerificationState
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
    required TResult Function() requestingCode,
    required TResult Function(VerificationResponseEntity response)
        codeRequested,
    required TResult Function() verifyingLoginCode,
    required TResult Function(AuthSessionEntity session) loginVerified,
    required TResult Function() verifyingActionCode,
    required TResult Function(bool success) actionVerified,
    required TResult Function(
            VerificationStateError error, VerificationFailure failure)
        error,
  }) {
    return error(this.error, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestingCode,
    TResult? Function(VerificationResponseEntity response)? codeRequested,
    TResult? Function()? verifyingLoginCode,
    TResult? Function(AuthSessionEntity session)? loginVerified,
    TResult? Function()? verifyingActionCode,
    TResult? Function(bool success)? actionVerified,
    TResult? Function(
            VerificationStateError error, VerificationFailure failure)?
        error,
  }) {
    return error?.call(this.error, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestingCode,
    TResult Function(VerificationResponseEntity response)? codeRequested,
    TResult Function()? verifyingLoginCode,
    TResult Function(AuthSessionEntity session)? loginVerified,
    TResult Function()? verifyingActionCode,
    TResult Function(bool success)? actionVerified,
    TResult Function(VerificationStateError error, VerificationFailure failure)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RequestingCode value) requestingCode,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_VerifyingLoginCode value) verifyingLoginCode,
    required TResult Function(_LoginVerified value) loginVerified,
    required TResult Function(_VerifyingActionCode value) verifyingActionCode,
    required TResult Function(_ActionVerified value) actionVerified,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RequestingCode value)? requestingCode,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult? Function(_LoginVerified value)? loginVerified,
    TResult? Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult? Function(_ActionVerified value)? actionVerified,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RequestingCode value)? requestingCode,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_VerifyingLoginCode value)? verifyingLoginCode,
    TResult Function(_LoginVerified value)? loginVerified,
    TResult Function(_VerifyingActionCode value)? verifyingActionCode,
    TResult Function(_ActionVerified value)? actionVerified,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends VerificationState {
  const factory _Error(
      {required final VerificationStateError error,
      required final VerificationFailure failure}) = _$ErrorImpl;
  const _Error._() : super._();

  VerificationStateError get error;
  VerificationFailure get failure;

  /// Create a copy of VerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
