// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportEntity {
  int get id;
  int get userId;
  int get targetId;
  String get response;
  DateTime get reportedAt;
  String? get reason;
  DateTime? get responseAt;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportEntityCopyWith<ReportEntity> get copyWith =>
      _$ReportEntityCopyWithImpl<ReportEntity>(
          this as ReportEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, response,
      reportedAt, reason, responseAt);

  @override
  String toString() {
    return 'ReportEntity(id: $id, userId: $userId, targetId: $targetId, response: $response, reportedAt: $reportedAt, reason: $reason, responseAt: $responseAt)';
  }
}

/// @nodoc
abstract mixin class $ReportEntityCopyWith<$Res> {
  factory $ReportEntityCopyWith(
          ReportEntity value, $Res Function(ReportEntity) _then) =
      _$ReportEntityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int userId,
      int targetId,
      String response,
      DateTime reportedAt,
      String? reason,
      DateTime? responseAt});
}

/// @nodoc
class _$ReportEntityCopyWithImpl<$Res> implements $ReportEntityCopyWith<$Res> {
  _$ReportEntityCopyWithImpl(this._self, this._then);

  final ReportEntity _self;
  final $Res Function(ReportEntity) _then;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reportedAt = null,
    Object? reason = freezed,
    Object? responseAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      reportedAt: null == reportedAt
          ? _self.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      responseAt: freezed == responseAt
          ? _self.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReportEntity].
extension ReportEntityPatterns on ReportEntity {
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
    TResult Function(_ReportEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportEntity() when $default != null:
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
    TResult Function(_ReportEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportEntity():
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
    TResult? Function(_ReportEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportEntity() when $default != null:
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
    TResult Function(int id, int userId, int targetId, String response,
            DateTime reportedAt, String? reason, DateTime? responseAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReportEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reportedAt, _that.reason, _that.responseAt);
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
    TResult Function(int id, int userId, int targetId, String response,
            DateTime reportedAt, String? reason, DateTime? responseAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportEntity():
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reportedAt, _that.reason, _that.responseAt);
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
    TResult? Function(int id, int userId, int targetId, String response,
            DateTime reportedAt, String? reason, DateTime? responseAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReportEntity() when $default != null:
        return $default(_that.id, _that.userId, _that.targetId, _that.response,
            _that.reportedAt, _that.reason, _that.responseAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReportEntity implements ReportEntity {
  const _ReportEntity(
      {required this.id,
      required this.userId,
      required this.targetId,
      required this.response,
      required this.reportedAt,
      required this.reason,
      required this.responseAt});

  @override
  final int id;
  @override
  final int userId;
  @override
  final int targetId;
  @override
  final String response;
  @override
  final DateTime reportedAt;
  @override
  final String? reason;
  @override
  final DateTime? responseAt;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportEntityCopyWith<_ReportEntity> get copyWith =>
      __$ReportEntityCopyWithImpl<_ReportEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.reportedAt, reportedAt) ||
                other.reportedAt == reportedAt) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.responseAt, responseAt) ||
                other.responseAt == responseAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, targetId, response,
      reportedAt, reason, responseAt);

  @override
  String toString() {
    return 'ReportEntity(id: $id, userId: $userId, targetId: $targetId, response: $response, reportedAt: $reportedAt, reason: $reason, responseAt: $responseAt)';
  }
}

/// @nodoc
abstract mixin class _$ReportEntityCopyWith<$Res>
    implements $ReportEntityCopyWith<$Res> {
  factory _$ReportEntityCopyWith(
          _ReportEntity value, $Res Function(_ReportEntity) _then) =
      __$ReportEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int targetId,
      String response,
      DateTime reportedAt,
      String? reason,
      DateTime? responseAt});
}

/// @nodoc
class __$ReportEntityCopyWithImpl<$Res>
    implements _$ReportEntityCopyWith<$Res> {
  __$ReportEntityCopyWithImpl(this._self, this._then);

  final _ReportEntity _self;
  final $Res Function(_ReportEntity) _then;

  /// Create a copy of ReportEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? targetId = null,
    Object? response = null,
    Object? reportedAt = null,
    Object? reason = freezed,
    Object? responseAt = freezed,
  }) {
    return _then(_ReportEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      reportedAt: null == reportedAt
          ? _self.reportedAt
          : reportedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      responseAt: freezed == responseAt
          ? _self.responseAt
          : responseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
