// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportState()';
  }
}

/// @nodoc
class $ReportStateCopyWith<$Res> {
  $ReportStateCopyWith(ReportState _, $Res Function(ReportState) __);
}

/// Adds pattern-matching-related methods to [ReportState].
extension ReportStatePatterns on ReportState {
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
    TResult Function(_SingleLoaded value)? singleLoaded,
    TResult Function(_CountLoaded value)? countLoaded,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
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
      case _SingleLoaded() when singleLoaded != null:
        return singleLoaded(_that);
      case _CountLoaded() when countLoaded != null:
        return countLoaded(_that);
      case _CreateSuccess() when createSuccess != null:
        return createSuccess(_that);
      case _UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that);
      case _DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess(_that);
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
    required TResult Function(_SingleLoaded value) singleLoaded,
    required TResult Function(_CountLoaded value) countLoaded,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
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
      case _SingleLoaded():
        return singleLoaded(_that);
      case _CountLoaded():
        return countLoaded(_that);
      case _CreateSuccess():
        return createSuccess(_that);
      case _UpdateSuccess():
        return updateSuccess(_that);
      case _DeleteSuccess():
        return deleteSuccess(_that);
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
    TResult? Function(_SingleLoaded value)? singleLoaded,
    TResult? Function(_CountLoaded value)? countLoaded,
    TResult? Function(_CreateSuccess value)? createSuccess,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
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
      case _SingleLoaded() when singleLoaded != null:
        return singleLoaded(_that);
      case _CountLoaded() when countLoaded != null:
        return countLoaded(_that);
      case _CreateSuccess() when createSuccess != null:
        return createSuccess(_that);
      case _UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that);
      case _DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess(_that);
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
    TResult Function(List<ReportEntity> reports)? listLoaded,
    TResult Function(ReportEntity report)? singleLoaded,
    TResult Function(int count)? countLoaded,
    TResult Function(ReportEntity report)? createSuccess,
    TResult Function(ReportEntity report)? updateSuccess,
    TResult Function()? deleteSuccess,
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
        return listLoaded(_that.reports);
      case _SingleLoaded() when singleLoaded != null:
        return singleLoaded(_that.report);
      case _CountLoaded() when countLoaded != null:
        return countLoaded(_that.count);
      case _CreateSuccess() when createSuccess != null:
        return createSuccess(_that.report);
      case _UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that.report);
      case _DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess();
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
    required TResult Function(List<ReportEntity> reports) listLoaded,
    required TResult Function(ReportEntity report) singleLoaded,
    required TResult Function(int count) countLoaded,
    required TResult Function(ReportEntity report) createSuccess,
    required TResult Function(ReportEntity report) updateSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _ListLoaded():
        return listLoaded(_that.reports);
      case _SingleLoaded():
        return singleLoaded(_that.report);
      case _CountLoaded():
        return countLoaded(_that.count);
      case _CreateSuccess():
        return createSuccess(_that.report);
      case _UpdateSuccess():
        return updateSuccess(_that.report);
      case _DeleteSuccess():
        return deleteSuccess();
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
    TResult? Function(List<ReportEntity> reports)? listLoaded,
    TResult? Function(ReportEntity report)? singleLoaded,
    TResult? Function(int count)? countLoaded,
    TResult? Function(ReportEntity report)? createSuccess,
    TResult? Function(ReportEntity report)? updateSuccess,
    TResult? Function()? deleteSuccess,
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _ListLoaded() when listLoaded != null:
        return listLoaded(_that.reports);
      case _SingleLoaded() when singleLoaded != null:
        return singleLoaded(_that.report);
      case _CountLoaded() when countLoaded != null:
        return countLoaded(_that.count);
      case _CreateSuccess() when createSuccess != null:
        return createSuccess(_that.report);
      case _UpdateSuccess() when updateSuccess != null:
        return updateSuccess(_that.report);
      case _DeleteSuccess() when deleteSuccess != null:
        return deleteSuccess();
      case _Failure() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements ReportState {
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
    return 'ReportState.initial()';
  }
}

/// @nodoc

class _Loading implements ReportState {
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
    return 'ReportState.loading()';
  }
}

/// @nodoc

class _ListLoaded implements ReportState {
  const _ListLoaded({required final List<ReportEntity> reports})
      : _reports = reports;

  final List<ReportEntity> _reports;
  List<ReportEntity> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  /// Create a copy of ReportState
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
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reports));

  @override
  String toString() {
    return 'ReportState.listLoaded(reports: $reports)';
  }
}

/// @nodoc
abstract mixin class _$ListLoadedCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$ListLoadedCopyWith(
          _ListLoaded value, $Res Function(_ListLoaded) _then) =
      __$ListLoadedCopyWithImpl;
  @useResult
  $Res call({List<ReportEntity> reports});
}

/// @nodoc
class __$ListLoadedCopyWithImpl<$Res> implements _$ListLoadedCopyWith<$Res> {
  __$ListLoadedCopyWithImpl(this._self, this._then);

  final _ListLoaded _self;
  final $Res Function(_ListLoaded) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reports = null,
  }) {
    return _then(_ListLoaded(
      reports: null == reports
          ? _self._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportEntity>,
    ));
  }
}

/// @nodoc

class _SingleLoaded implements ReportState {
  const _SingleLoaded({required this.report});

  final ReportEntity report;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SingleLoadedCopyWith<_SingleLoaded> get copyWith =>
      __$SingleLoadedCopyWithImpl<_SingleLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleLoaded &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportState.singleLoaded(report: $report)';
  }
}

/// @nodoc
abstract mixin class _$SingleLoadedCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$SingleLoadedCopyWith(
          _SingleLoaded value, $Res Function(_SingleLoaded) _then) =
      __$SingleLoadedCopyWithImpl;
  @useResult
  $Res call({ReportEntity report});

  $ReportEntityCopyWith<$Res> get report;
}

/// @nodoc
class __$SingleLoadedCopyWithImpl<$Res>
    implements _$SingleLoadedCopyWith<$Res> {
  __$SingleLoadedCopyWithImpl(this._self, this._then);

  final _SingleLoaded _self;
  final $Res Function(_SingleLoaded) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(_SingleLoaded(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
    ));
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportEntityCopyWith<$Res> get report {
    return $ReportEntityCopyWith<$Res>(_self.report, (value) {
      return _then(_self.copyWith(report: value));
    });
  }
}

/// @nodoc

class _CountLoaded implements ReportState {
  const _CountLoaded({required this.count});

  final int count;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CountLoadedCopyWith<_CountLoaded> get copyWith =>
      __$CountLoadedCopyWithImpl<_CountLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CountLoaded &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @override
  String toString() {
    return 'ReportState.countLoaded(count: $count)';
  }
}

/// @nodoc
abstract mixin class _$CountLoadedCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$CountLoadedCopyWith(
          _CountLoaded value, $Res Function(_CountLoaded) _then) =
      __$CountLoadedCopyWithImpl;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$CountLoadedCopyWithImpl<$Res> implements _$CountLoadedCopyWith<$Res> {
  __$CountLoadedCopyWithImpl(this._self, this._then);

  final _CountLoaded _self;
  final $Res Function(_CountLoaded) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
  }) {
    return _then(_CountLoaded(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _CreateSuccess implements ReportState {
  const _CreateSuccess({required this.report});

  final ReportEntity report;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSuccessCopyWith<_CreateSuccess> get copyWith =>
      __$CreateSuccessCopyWithImpl<_CreateSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSuccess &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportState.createSuccess(report: $report)';
  }
}

/// @nodoc
abstract mixin class _$CreateSuccessCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) _then) =
      __$CreateSuccessCopyWithImpl;
  @useResult
  $Res call({ReportEntity report});

  $ReportEntityCopyWith<$Res> get report;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(this._self, this._then);

  final _CreateSuccess _self;
  final $Res Function(_CreateSuccess) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(_CreateSuccess(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
    ));
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportEntityCopyWith<$Res> get report {
    return $ReportEntityCopyWith<$Res>(_self.report, (value) {
      return _then(_self.copyWith(report: value));
    });
  }
}

/// @nodoc

class _UpdateSuccess implements ReportState {
  const _UpdateSuccess({required this.report});

  final ReportEntity report;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      __$UpdateSuccessCopyWithImpl<_UpdateSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSuccess &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  @override
  String toString() {
    return 'ReportState.updateSuccess(report: $report)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSuccessCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) _then) =
      __$UpdateSuccessCopyWithImpl;
  @useResult
  $Res call({ReportEntity report});

  $ReportEntityCopyWith<$Res> get report;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(this._self, this._then);

  final _UpdateSuccess _self;
  final $Res Function(_UpdateSuccess) _then;

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? report = null,
  }) {
    return _then(_UpdateSuccess(
      report: null == report
          ? _self.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportEntity,
    ));
  }

  /// Create a copy of ReportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportEntityCopyWith<$Res> get report {
    return $ReportEntityCopyWith<$Res>(_self.report, (value) {
      return _then(_self.copyWith(report: value));
    });
  }
}

/// @nodoc

class _DeleteSuccess implements ReportState {
  const _DeleteSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ReportState.deleteSuccess()';
  }
}

/// @nodoc

class _Failure implements ReportState {
  const _Failure({required this.message});

  final String message;

  /// Create a copy of ReportState
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
    return 'ReportState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
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

  /// Create a copy of ReportState
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
