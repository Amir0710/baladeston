// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CollectionModel {
  int? get id;
  String get title;
  String get password;
  String get status;
  DateTime get createdAt;
  int get ownerId;
  DateTime get lastTransaction;
  String? get thumbnailUrl;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CollectionModelCopyWith<CollectionModel> get copyWith =>
      _$CollectionModelCopyWithImpl<CollectionModel>(
          this as CollectionModel, _$identity);

  /// Serializes this CollectionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CollectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, password, status,
      createdAt, ownerId, lastTransaction, thumbnailUrl);

  @override
  String toString() {
    return 'CollectionModel(id: $id, title: $title, password: $password, status: $status, createdAt: $createdAt, ownerId: $ownerId, lastTransaction: $lastTransaction, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $CollectionModelCopyWith<$Res> {
  factory $CollectionModelCopyWith(
          CollectionModel value, $Res Function(CollectionModel) _then) =
      _$CollectionModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String status,
      DateTime createdAt,
      int ownerId,
      DateTime lastTransaction,
      String? thumbnailUrl});
}

/// @nodoc
class _$CollectionModelCopyWithImpl<$Res>
    implements $CollectionModelCopyWith<$Res> {
  _$CollectionModelCopyWithImpl(this._self, this._then);

  final CollectionModel _self;
  final $Res Function(CollectionModel) _then;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = null,
    Object? createdAt = null,
    Object? ownerId = null,
    Object? lastTransaction = null,
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
      ownerId: null == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      lastTransaction: null == lastTransaction
          ? _self.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CollectionModel].
extension CollectionModelPatterns on CollectionModel {
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
    TResult Function(_CollectionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CollectionModel() when $default != null:
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
    TResult Function(_CollectionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionModel():
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
    TResult? Function(_CollectionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionModel() when $default != null:
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
            int ownerId,
            DateTime lastTransaction,
            String? thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CollectionModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.ownerId,
            _that.lastTransaction,
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
            int ownerId,
            DateTime lastTransaction,
            String? thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionModel():
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.ownerId,
            _that.lastTransaction,
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
            int ownerId,
            DateTime lastTransaction,
            String? thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CollectionModel() when $default != null:
        return $default(
            _that.id,
            _that.title,
            _that.password,
            _that.status,
            _that.createdAt,
            _that.ownerId,
            _that.lastTransaction,
            _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CollectionModel extends CollectionModel {
  const _CollectionModel(
      {this.id,
      required this.title,
      required this.password,
      required this.status,
      required this.createdAt,
      required this.ownerId,
      required this.lastTransaction,
      this.thumbnailUrl})
      : super._();
  factory _CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);

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
  final int ownerId;
  @override
  final DateTime lastTransaction;
  @override
  final String? thumbnailUrl;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CollectionModelCopyWith<_CollectionModel> get copyWith =>
      __$CollectionModelCopyWithImpl<_CollectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CollectionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CollectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, password, status,
      createdAt, ownerId, lastTransaction, thumbnailUrl);

  @override
  String toString() {
    return 'CollectionModel(id: $id, title: $title, password: $password, status: $status, createdAt: $createdAt, ownerId: $ownerId, lastTransaction: $lastTransaction, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$CollectionModelCopyWith<$Res>
    implements $CollectionModelCopyWith<$Res> {
  factory _$CollectionModelCopyWith(
          _CollectionModel value, $Res Function(_CollectionModel) _then) =
      __$CollectionModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String password,
      String status,
      DateTime createdAt,
      int ownerId,
      DateTime lastTransaction,
      String? thumbnailUrl});
}

/// @nodoc
class __$CollectionModelCopyWithImpl<$Res>
    implements _$CollectionModelCopyWith<$Res> {
  __$CollectionModelCopyWithImpl(this._self, this._then);

  final _CollectionModel _self;
  final $Res Function(_CollectionModel) _then;

  /// Create a copy of CollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? password = null,
    Object? status = null,
    Object? createdAt = null,
    Object? ownerId = null,
    Object? lastTransaction = null,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_CollectionModel(
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
      ownerId: null == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      lastTransaction: null == lastTransaction
          ? _self.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnailUrl: freezed == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
