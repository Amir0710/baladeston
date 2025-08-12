// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionEntity {
  int? get id;
  String get title;
  String get password;
  String get status;
  DateTime get createdAt;
  DateTime get lastTransaction;
  int get ownerId;
  String? get thumbnailUrl;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CollectionEntityCopyWith<CollectionEntity> get copyWith =>
      _$CollectionEntityCopyWithImpl<CollectionEntity>(
          this as CollectionEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollectionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, password, status,
      createdAt, lastTransaction, ownerId, thumbnailUrl);

  @override
  String toString() {
    return 'CollectionEntity(id: $id, title: $title, password: $password, status: $status, createdAt: $createdAt, lastTransaction: $lastTransaction, ownerId: $ownerId, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $CollectionEntityCopyWith<$Res> {
  factory $CollectionEntityCopyWith(
          CollectionEntity value, $Res Function(CollectionEntity) _then) =
      _$CollectionEntityCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String status,
      DateTime createdAt,
      DateTime lastTransaction,
      int ownerId,
      String? thumbnailUrl});
}

/// @nodoc
class _$CollectionEntityCopyWithImpl<$Res>
    implements $CollectionEntityCopyWith<$Res> {
  _$CollectionEntityCopyWithImpl(this._self, this._then);

  final CollectionEntity _self;
  final $Res Function(CollectionEntity) _then;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastTransaction = null,
    Object? ownerId = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTransaction: null == lastTransaction
          ? _self.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: null == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CollectionEntity].
extension CollectionEntityPatterns on CollectionEntity {
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
    TResult Function(_CollectionEntity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity() when $default != null:
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
    TResult Function(_CollectionEntity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity():
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
    TResult? Function(_CollectionEntity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity() when $default != null:
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
            int? id,
            String title,
            String password,
            String status,
            DateTime createdAt,
            DateTime lastTransaction,
            int ownerId,
            String? thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.lastTransaction,
            _that.ownerId,
            _that.thumbnailUrl);
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
            int? id,
            String title,
            String password,
            String status,
            DateTime createdAt,
            DateTime lastTransaction,
            int ownerId,
            String? thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity():
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.lastTransaction,
            _that.ownerId,
            _that.thumbnailUrl);
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
            int? id,
            String title,
            String password,
            String status,
            DateTime createdAt,
            DateTime lastTransaction,
            int ownerId,
            String? thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionEntity() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.lastTransaction,
            _that.ownerId,
            _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CollectionEntity implements CollectionEntity {
  const _CollectionEntity(
      {this.id,
      required this.title,
      required this.password,
      required this.status,
      required this.createdAt,
      required this.lastTransaction,
      required this.ownerId,
      this.thumbnailUrl});

  @override
  final int? id;
  @override
  final String title;
  @override
  final String password;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastTransaction;
  @override
  final int ownerId;
  @override
  final String? thumbnailUrl;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CollectionEntityCopyWith<_CollectionEntity> get copyWith =>
      __$CollectionEntityCopyWithImpl<_CollectionEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CollectionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, password, status,
      createdAt, lastTransaction, ownerId, thumbnailUrl);

  @override
  String toString() {
    return 'CollectionEntity(id: $id, title: $title, password: $password, status: $status, createdAt: $createdAt, lastTransaction: $lastTransaction, ownerId: $ownerId, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$CollectionEntityCopyWith<$Res>
    implements $CollectionEntityCopyWith<$Res> {
  factory _$CollectionEntityCopyWith(
          _CollectionEntity value, $Res Function(_CollectionEntity) _then) =
      __$CollectionEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String status,
      DateTime createdAt,
      DateTime lastTransaction,
      int ownerId,
      String? thumbnailUrl});
}

/// @nodoc
class __$CollectionEntityCopyWithImpl<$Res>
    implements _$CollectionEntityCopyWith<$Res> {
  __$CollectionEntityCopyWithImpl(this._self, this._then);

  final _CollectionEntity _self;
  final $Res Function(_CollectionEntity) _then;

  /// Create a copy of CollectionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastTransaction = null,
    Object? ownerId = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_CollectionEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastTransaction: null == lastTransaction
          ? _self.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ownerId: null == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
