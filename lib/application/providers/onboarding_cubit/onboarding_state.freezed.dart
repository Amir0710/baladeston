// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
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
    extends _$OnboardingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OnboardingState.initial()';
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
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
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
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnboardingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UploadingImageImplCopyWith<$Res> {
  factory _$$UploadingImageImplCopyWith(_$UploadingImageImpl value,
          $Res Function(_$UploadingImageImpl) then) =
      __$$UploadingImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadingImageImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$UploadingImageImpl>
    implements _$$UploadingImageImplCopyWith<$Res> {
  __$$UploadingImageImplCopyWithImpl(
      _$UploadingImageImpl _value, $Res Function(_$UploadingImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadingImageImpl implements _UploadingImage {
  const _$UploadingImageImpl();

  @override
  String toString() {
    return 'OnboardingState.uploadingImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadingImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return uploadingImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return uploadingImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) {
    if (uploadingImage != null) {
      return uploadingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return uploadingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return uploadingImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploadingImage != null) {
      return uploadingImage(this);
    }
    return orElse();
  }
}

abstract class _UploadingImage implements OnboardingState {
  const factory _UploadingImage() = _$UploadingImageImpl;
}

/// @nodoc
abstract class _$$ImageUploadedImplCopyWith<$Res> {
  factory _$$ImageUploadedImplCopyWith(
          _$ImageUploadedImpl value, $Res Function(_$ImageUploadedImpl) then) =
      __$$ImageUploadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$ImageUploadedImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$ImageUploadedImpl>
    implements _$$ImageUploadedImplCopyWith<$Res> {
  __$$ImageUploadedImplCopyWithImpl(
      _$ImageUploadedImpl _value, $Res Function(_$ImageUploadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$ImageUploadedImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageUploadedImpl implements _ImageUploaded {
  const _$ImageUploadedImpl({required this.imageUrl});

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'OnboardingState.imageUploaded(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUploadedImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUploadedImplCopyWith<_$ImageUploadedImpl> get copyWith =>
      __$$ImageUploadedImplCopyWithImpl<_$ImageUploadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return imageUploaded(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return imageUploaded?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) {
    if (imageUploaded != null) {
      return imageUploaded(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return imageUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return imageUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (imageUploaded != null) {
      return imageUploaded(this);
    }
    return orElse();
  }
}

abstract class _ImageUploaded implements OnboardingState {
  const factory _ImageUploaded({required final String imageUrl}) =
      _$ImageUploadedImpl;

  String get imageUrl;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageUploadedImplCopyWith<_$ImageUploadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletingImplCopyWith<$Res> {
  factory _$$CompletingImplCopyWith(
          _$CompletingImpl value, $Res Function(_$CompletingImpl) then) =
      __$$CompletingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletingImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$CompletingImpl>
    implements _$$CompletingImplCopyWith<$Res> {
  __$$CompletingImplCopyWithImpl(
      _$CompletingImpl _value, $Res Function(_$CompletingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletingImpl implements _Completing {
  const _$CompletingImpl();

  @override
  String toString() {
    return 'OnboardingState.completing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return completing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return completing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) {
    if (completing != null) {
      return completing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return completing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return completing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (completing != null) {
      return completing(this);
    }
    return orElse();
  }
}

abstract class _Completing implements OnboardingState {
  const factory _Completing() = _$CompletingImpl;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl value, $Res Function(_$CompletedImpl) then) =
      __$$CompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSessionEntity session});

  $AuthSessionEntityCopyWith<$Res> get session;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl _value, $Res Function(_$CompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$CompletedImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as AuthSessionEntity,
    ));
  }

  /// Create a copy of OnboardingState
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

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl({required this.session});

  @override
  final AuthSessionEntity session;

  @override
  String toString() {
    return 'OnboardingState.completed(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedImplCopyWith<_$CompletedImpl> get copyWith =>
      __$$CompletedImplCopyWithImpl<_$CompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return completed(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return completed?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements OnboardingState {
  const factory _Completed({required final AuthSessionEntity session}) =
      _$CompletedImpl;

  AuthSessionEntity get session;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedImplCopyWith<_$CompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnboardingStateError error, String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OnboardingStateError,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error, required this.message});

  @override
  final OnboardingStateError error;
  @override
  final String message;

  @override
  String toString() {
    return 'OnboardingState.error(error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  /// Create a copy of OnboardingState
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
    required TResult Function() uploadingImage,
    required TResult Function(String imageUrl) imageUploaded,
    required TResult Function() completing,
    required TResult Function(AuthSessionEntity session) completed,
    required TResult Function(OnboardingStateError error, String message) error,
  }) {
    return error(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? uploadingImage,
    TResult? Function(String imageUrl)? imageUploaded,
    TResult? Function()? completing,
    TResult? Function(AuthSessionEntity session)? completed,
    TResult? Function(OnboardingStateError error, String message)? error,
  }) {
    return error?.call(this.error, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? uploadingImage,
    TResult Function(String imageUrl)? imageUploaded,
    TResult Function()? completing,
    TResult Function(AuthSessionEntity session)? completed,
    TResult Function(OnboardingStateError error, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UploadingImage value) uploadingImage,
    required TResult Function(_ImageUploaded value) imageUploaded,
    required TResult Function(_Completing value) completing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UploadingImage value)? uploadingImage,
    TResult? Function(_ImageUploaded value)? imageUploaded,
    TResult? Function(_Completing value)? completing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UploadingImage value)? uploadingImage,
    TResult Function(_ImageUploaded value)? imageUploaded,
    TResult Function(_Completing value)? completing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OnboardingState {
  const factory _Error(
      {required final OnboardingStateError error,
      required final String message}) = _$ErrorImpl;

  OnboardingStateError get error;
  String get message;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
