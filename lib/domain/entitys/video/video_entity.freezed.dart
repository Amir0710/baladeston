// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoEntity {
  int get id;
  String get title;
  String? get description;
  String get videoUrl;
  String? get thumbnailUrl;
  String get status;
  int get uploaderId;
  int get categoryId;
  DateTime get uploadedAt;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoEntityCopyWith<VideoEntity> get copyWith =>
      _$VideoEntityCopyWithImpl<VideoEntity>(this as VideoEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploaderId, uploaderId) ||
                other.uploaderId == uploaderId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, videoUrl,
      thumbnailUrl, status, uploaderId, categoryId, uploadedAt);

  @override
  String toString() {
    return 'VideoEntity(id: $id, title: $title, description: $description, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, status: $status, uploaderId: $uploaderId, categoryId: $categoryId, uploadedAt: $uploadedAt)';
  }
}

/// @nodoc
abstract mixin class $VideoEntityCopyWith<$Res> {
  factory $VideoEntityCopyWith(
          VideoEntity value, $Res Function(VideoEntity) _then) =
      _$VideoEntityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      String videoUrl,
      String? thumbnailUrl,
      String status,
      int uploaderId,
      int categoryId,
      DateTime uploadedAt});
}

/// @nodoc
class _$VideoEntityCopyWithImpl<$Res> implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._self, this._then);

  final VideoEntity _self;
  final $Res Function(VideoEntity) _then;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? uploaderId = null,
    Object? categoryId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploaderId: null == uploaderId
          ? _self.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: null == uploadedAt
          ? _self.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoEntity].
extension VideoEntityPatterns on VideoEntity {
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
    TResult Function(_VideoEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoEntity() when $default != null:
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
    TResult Function(_VideoEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoEntity():
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
    TResult? Function(_VideoEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoEntity() when $default != null:
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
    TResult Function(
            int id,
            String title,
            String? description,
            String videoUrl,
            String? thumbnailUrl,
            String status,
            int uploaderId,
            int categoryId,
            DateTime uploadedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.videoUrl,
            _that.thumbnailUrl,
            _that.status,
            _that.uploaderId,
            _that.categoryId,
            _that.uploadedAt);
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
    TResult Function(
            int id,
            String title,
            String? description,
            String videoUrl,
            String? thumbnailUrl,
            String status,
            int uploaderId,
            int categoryId,
            DateTime uploadedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoEntity():
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.videoUrl,
            _that.thumbnailUrl,
            _that.status,
            _that.uploaderId,
            _that.categoryId,
            _that.uploadedAt);
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
    TResult? Function(
            int id,
            String title,
            String? description,
            String videoUrl,
            String? thumbnailUrl,
            String status,
            int uploaderId,
            int categoryId,
            DateTime uploadedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.description,
            _that.videoUrl,
            _that.thumbnailUrl,
            _that.status,
            _that.uploaderId,
            _that.categoryId,
            _that.uploadedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VideoEntity implements VideoEntity {
  const _VideoEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.videoUrl,
      required this.thumbnailUrl,
      required this.status,
      required this.uploaderId,
      required this.categoryId,
      required this.uploadedAt});

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String videoUrl;
  @override
  final String? thumbnailUrl;
  @override
  final String status;
  @override
  final int uploaderId;
  @override
  final int categoryId;
  @override
  final DateTime uploadedAt;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoEntityCopyWith<_VideoEntity> get copyWith =>
      __$VideoEntityCopyWithImpl<_VideoEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploaderId, uploaderId) ||
                other.uploaderId == uploaderId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, videoUrl,
      thumbnailUrl, status, uploaderId, categoryId, uploadedAt);

  @override
  String toString() {
    return 'VideoEntity(id: $id, title: $title, description: $description, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, status: $status, uploaderId: $uploaderId, categoryId: $categoryId, uploadedAt: $uploadedAt)';
  }
}

/// @nodoc
abstract mixin class _$VideoEntityCopyWith<$Res>
    implements $VideoEntityCopyWith<$Res> {
  factory _$VideoEntityCopyWith(
          _VideoEntity value, $Res Function(_VideoEntity) _then) =
      __$VideoEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      String videoUrl,
      String? thumbnailUrl,
      String status,
      int uploaderId,
      int categoryId,
      DateTime uploadedAt});
}

/// @nodoc
class __$VideoEntityCopyWithImpl<$Res> implements _$VideoEntityCopyWith<$Res> {
  __$VideoEntityCopyWithImpl(this._self, this._then);

  final _VideoEntity _self;
  final $Res Function(_VideoEntity) _then;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? uploaderId = null,
    Object? categoryId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_VideoEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploaderId: null == uploaderId
          ? _self.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: null == uploadedAt
          ? _self.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
