// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerificationResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AuthSessionEntity session) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AuthSessionEntity session)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AuthSessionEntity session)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResultCopyWith<$Res> {
  factory $VerificationResultCopyWith(
          VerificationResult value, $Res Function(VerificationResult) then) =
      _$VerificationResultCopyWithImpl<$Res, VerificationResult>;
}

/// @nodoc
class _$VerificationResultCopyWithImpl<$Res, $Val extends VerificationResult>
    implements $VerificationResultCopyWith<$Res> {
  _$VerificationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VerificationSuccessImplCopyWith<$Res> {
  factory _$$VerificationSuccessImplCopyWith(_$VerificationSuccessImpl value,
          $Res Function(_$VerificationSuccessImpl) then) =
      __$$VerificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationSuccessImplCopyWithImpl<$Res>
    extends _$VerificationResultCopyWithImpl<$Res, _$VerificationSuccessImpl>
    implements _$$VerificationSuccessImplCopyWith<$Res> {
  __$$VerificationSuccessImplCopyWithImpl(_$VerificationSuccessImpl _value,
      $Res Function(_$VerificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationResult
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VerificationSuccessImpl implements VerificationSuccess {
  const _$VerificationSuccessImpl();

  @override
  String toString() {
    return 'VerificationResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AuthSessionEntity session) authenticated,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AuthSessionEntity session)? authenticated,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AuthSessionEntity session)? authenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationAuthenticated value) authenticated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationAuthenticated value)? authenticated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VerificationSuccess implements VerificationResult {
  const factory VerificationSuccess() = _$VerificationSuccessImpl;
}

/// @nodoc
abstract class _$$VerificationAuthenticatedImplCopyWith<$Res> {
  factory _$$VerificationAuthenticatedImplCopyWith(
          _$VerificationAuthenticatedImpl value,
          $Res Function(_$VerificationAuthenticatedImpl) then) =
      __$$VerificationAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSessionEntity session});

  $AuthSessionEntityCopyWith<$Res> get session;
}

/// @nodoc
class __$$VerificationAuthenticatedImplCopyWithImpl<$Res>
    extends _$VerificationResultCopyWithImpl<$Res,
        _$VerificationAuthenticatedImpl>
    implements _$$VerificationAuthenticatedImplCopyWith<$Res> {
  __$$VerificationAuthenticatedImplCopyWithImpl(
      _$VerificationAuthenticatedImpl _value,
      $Res Function(_$VerificationAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$VerificationAuthenticatedImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as AuthSessionEntity,
    ));
  }

  /// Create a copy of VerificationResult
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

class _$VerificationAuthenticatedImpl implements VerificationAuthenticated {
  const _$VerificationAuthenticatedImpl({required this.session});

  @override
  final AuthSessionEntity session;

  @override
  String toString() {
    return 'VerificationResult.authenticated(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationAuthenticatedImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  /// Create a copy of VerificationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationAuthenticatedImplCopyWith<_$VerificationAuthenticatedImpl>
      get copyWith => __$$VerificationAuthenticatedImplCopyWithImpl<
          _$VerificationAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(AuthSessionEntity session) authenticated,
  }) {
    return authenticated(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(AuthSessionEntity session)? authenticated,
  }) {
    return authenticated?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(AuthSessionEntity session)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerificationSuccess value) success,
    required TResult Function(VerificationAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VerificationSuccess value)? success,
    TResult? Function(VerificationAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerificationSuccess value)? success,
    TResult Function(VerificationAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class VerificationAuthenticated implements VerificationResult {
  const factory VerificationAuthenticated(
          {required final AuthSessionEntity session}) =
      _$VerificationAuthenticatedImpl;

  AuthSessionEntity get session;

  /// Create a copy of VerificationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationAuthenticatedImplCopyWith<_$VerificationAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
