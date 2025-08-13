// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportModel {
  int? get id;
  int get userId;
  int get targetId;
  String get response;
  String? get reason;
  DateTime get reportedAt;
  DateTime? get responseAt;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportModelCopyWith<ReportModel> get copyWith =>
      _$ReportModelCopyWithImpl<ReportModel>(this as ReportModel, _$identity);

  /// Serializes this ReportModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, response,
      reason, reportedAt, responseAt);

  @override
  String toString() {
    return 'ReportModel(id: $id, userId: $userId, targetId: $targetId, response: $response, reason: $reason, reportedAt: $reportedAt, responseAt: $responseAt)';
  }
}

/// @nodoc
abstract mixin class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) _then) =
      _$ReportModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      String response,
      String? reason,
      DateTime reportedAt,
      DateTime? responseAt});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res> implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._self, this._then);

  final ReportModel _self;
  final $Res Function(ReportModel) _then;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reason = freezed,
    Object? reportedAt = null,
    Object? responseAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _self.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedAt: null == reportedAt
          ? _self.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseAt: freezed == responseAt
          ? _self.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportModel].
extension ReportModelPatterns on ReportModel {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReportModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportModel() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ReportModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportModel():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ReportModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportModel() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? id, int userId, int targetId, String response,
            String? reason, DateTime reportedAt, DateTime? responseAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportModel() when $default != null:
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reason, _that.reportedAt, _that.responseAt);
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
  TResult when<TResult extends Object?>(
    TResult Function(int? id, int userId, int targetId, String response,
            String? reason, DateTime reportedAt, DateTime? responseAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportModel():
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reason, _that.reportedAt, _that.responseAt);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? id, int userId, int targetId, String response,
            String? reason, DateTime reportedAt, DateTime? responseAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportModel() when $default != null:
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reason, _that.reportedAt, _that.responseAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ReportModel implements ReportModel {
  const _ReportModel(
      {required this.id,
      required this.userId,
      required this.targetId,
      required this.response,
      this.reason,
      required this.reportedAt,
      this.responseAt});
  factory _ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);

  @override
  final int? id;
  @override
  final int userId;
  @override
  final int targetId;
  @override
  final String response;
  @override
  final String? reason;
  @override
  final DateTime reportedAt;
  @override
  final DateTime? responseAt;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportModelCopyWith<_ReportModel> get copyWith =>
      __$ReportModelCopyWithImpl<_ReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReportModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, response,
      reason, reportedAt, responseAt);

  @override
  String toString() {
    return 'ReportModel(id: $id, userId: $userId, targetId: $targetId, response: $response, reason: $reason, reportedAt: $reportedAt, responseAt: $responseAt)';
  }
}

/// @nodoc
abstract mixin class _$ReportModelCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$ReportModelCopyWith(
          _ReportModel value, $Res Function(_ReportModel) _then) =
      __$ReportModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      int userId,
      int targetId,
      String response,
      String? reason,
      DateTime reportedAt,
      DateTime? responseAt});
}

/// @nodoc
class __$ReportModelCopyWithImpl<$Res> implements _$ReportModelCopyWith<$Res> {
  __$ReportModelCopyWithImpl(this._self, this._then);

  final _ReportModel _self;
  final $Res Function(_ReportModel) _then;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reason = freezed,
    Object? reportedAt = null,
    Object? responseAt = freezed,
  }) {
    return _then(_ReportModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _self.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      response: null == response
          ? _self.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      reportedAt: null == reportedAt
          ? _self.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      responseAt: freezed == responseAt
          ? _self.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
