// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentEntity {
  int get userId;
  int get targetId;
  String get content;
  double get rating;
  DateTime get createdAt;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      _$CommentEntityCopyWithImpl<CommentEntity>(
          this as CommentEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CommentEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, targetId, content, rating, createdAt);

  @override
  String toString() {
    return 'CommentEntity(userId: $userId, targetId: $targetId, content: $content, rating: $rating, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) _then) =
      _$CommentEntityCopyWithImpl;
  @useResult
  $Res call(
      {int userId,
      int targetId,
      String content,
      double rating,
      DateTime createdAt});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._self, this._then);

  final CommentEntity _self;
  final $Res Function(CommentEntity) _then;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? targetId = null,
    Object? content = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _self.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [CommentEntity].
extension CommentEntityPatterns on CommentEntity {
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
    TResult Function(_CommentEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommentEntity() when $default != null:
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
    TResult Function(_CommentEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentEntity():
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
    TResult? Function(_CommentEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentEntity() when $default != null:
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
    TResult Function(int userId, int targetId, String content, double rating,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CommentEntity() when $default != null:
        return $default(_that.userId, _that.targetId, _that.content,
            _that.rating, _that.createdAt);
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
    TResult Function(int userId, int targetId, String content, double rating,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentEntity():
        return $default(_that.userId, _that.targetId, _that.content,
            _that.rating, _that.createdAt);
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
    TResult? Function(int userId, int targetId, String content, double rating,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CommentEntity() when $default != null:
        return $default(_that.userId, _that.targetId, _that.content,
            _that.rating, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CommentEntity implements CommentEntity {
  const _CommentEntity(
      {required this.userId,
      required this.targetId,
      required this.content,
      required this.rating,
      required this.createdAt});

  @override
  final int userId;
  @override
  final int targetId;
  @override
  final String content;
  @override
  final double rating;
  @override
  final DateTime createdAt;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CommentEntityCopyWith<_CommentEntity> get copyWith =>
      __$CommentEntityCopyWithImpl<_CommentEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, targetId, content, rating, createdAt);

  @override
  String toString() {
    return 'CommentEntity(userId: $userId, targetId: $targetId, content: $content, rating: $rating, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$CommentEntityCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$CommentEntityCopyWith(
          _CommentEntity value, $Res Function(_CommentEntity) _then) =
      __$CommentEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userId,
      int targetId,
      String content,
      double rating,
      DateTime createdAt});
}

/// @nodoc
class __$CommentEntityCopyWithImpl<$Res>
    implements _$CommentEntityCopyWith<$Res> {
  __$CommentEntityCopyWithImpl(this._self, this._then);

  final _CommentEntity _self;
  final $Res Function(_CommentEntity) _then;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? targetId = null,
    Object? content = null,
    Object? rating = null,
    Object? createdAt = null,
  }) {
    return _then(_CommentEntity(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      targetId: null == targetId
          ? _self.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
