// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Purchase {
  int get id;
  String get status;
  int get userId;
  int get collectionId;
  int? get discountId;
  double get finalPrice;
  DateTime get purchaseTime;
  DateTime? get expiresAt;

  /// Create a copy of Purchase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseCopyWith<Purchase> get copyWith =>
      _$PurchaseCopyWithImpl<Purchase>(this as Purchase, _$identity);

  /// Serializes this Purchase to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Purchase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.purchaseTime, purchaseTime) ||
                other.purchaseTime == purchaseTime) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, userId, collectionId,
      discountId, finalPrice, purchaseTime, expiresAt);

  @override
  String toString() {
    return 'Purchase(id: $id, status: $status, userId: $userId, collectionId: $collectionId, discountId: $discountId, finalPrice: $finalPrice, purchaseTime: $purchaseTime, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $PurchaseCopyWith<$Res> {
  factory $PurchaseCopyWith(Purchase value, $Res Function(Purchase) _then) =
      _$PurchaseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String status,
      int userId,
      int collectionId,
      int? discountId,
      double finalPrice,
      DateTime purchaseTime,
      DateTime? expiresAt});
}

/// @nodoc
class _$PurchaseCopyWithImpl<$Res> implements $PurchaseCopyWith<$Res> {
  _$PurchaseCopyWithImpl(this._self, this._then);

  final Purchase _self;
  final $Res Function(Purchase) _then;

  /// Create a copy of Purchase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? collectionId = null,
    Object? discountId = freezed,
    Object? finalPrice = null,
    Object? purchaseTime = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      discountId: freezed == discountId
          ? _self.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: null == finalPrice
          ? _self.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseTime: null == purchaseTime
          ? _self.purchaseTime
          : purchaseTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Purchase].
extension PurchasePatterns on Purchase {
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
    TResult Function(_Purchase value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Purchase() when $default != null:
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
    TResult Function(_Purchase value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Purchase():
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
    TResult? Function(_Purchase value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Purchase() when $default != null:
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
            String status,
            int userId,
            int collectionId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Purchase() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.collectionId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt);
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
            String status,
            int userId,
            int collectionId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Purchase():
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.collectionId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt);
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
            String status,
            int userId,
            int collectionId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Purchase() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.collectionId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Purchase implements Purchase {
  _Purchase(
      {required this.id,
      required this.status,
      required this.userId,
      required this.collectionId,
      required this.discountId,
      required this.finalPrice,
      required this.purchaseTime,
      required this.expiresAt});
  factory _Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final int userId;
  @override
  final int collectionId;
  @override
  final int? discountId;
  @override
  final double finalPrice;
  @override
  final DateTime purchaseTime;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Purchase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseCopyWith<_Purchase> get copyWith =>
      __$PurchaseCopyWithImpl<_Purchase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Purchase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.purchaseTime, purchaseTime) ||
                other.purchaseTime == purchaseTime) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, userId, collectionId,
      discountId, finalPrice, purchaseTime, expiresAt);

  @override
  String toString() {
    return 'Purchase(id: $id, status: $status, userId: $userId, collectionId: $collectionId, discountId: $discountId, finalPrice: $finalPrice, purchaseTime: $purchaseTime, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseCopyWith<$Res>
    implements $PurchaseCopyWith<$Res> {
  factory _$PurchaseCopyWith(_Purchase value, $Res Function(_Purchase) _then) =
      __$PurchaseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      int userId,
      int collectionId,
      int? discountId,
      double finalPrice,
      DateTime purchaseTime,
      DateTime? expiresAt});
}

/// @nodoc
class __$PurchaseCopyWithImpl<$Res> implements _$PurchaseCopyWith<$Res> {
  __$PurchaseCopyWithImpl(this._self, this._then);

  final _Purchase _self;
  final $Res Function(_Purchase) _then;

  /// Create a copy of Purchase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? collectionId = null,
    Object? discountId = freezed,
    Object? finalPrice = null,
    Object? purchaseTime = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_Purchase(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      discountId: freezed == discountId
          ? _self.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as int?,
      finalPrice: null == finalPrice
          ? _self.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseTime: null == purchaseTime
          ? _self.purchaseTime
          : purchaseTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
