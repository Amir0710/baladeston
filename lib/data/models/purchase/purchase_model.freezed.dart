// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseModel {
  int get id;
  String get status;
  int get userId;
  int get categoryId;
  int? get discountId;
  double get finalPrice;
  DateTime get purchaseTime;
  DateTime? get expiresAt;
  DateTime get createdAt;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PurchaseModelCopyWith<PurchaseModel> get copyWith =>
      _$PurchaseModelCopyWithImpl<PurchaseModel>(
          this as PurchaseModel, _$identity);

  /// Serializes this PurchaseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PurchaseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.purchaseTime, purchaseTime) ||
                other.purchaseTime == purchaseTime) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, userId, categoryId,
      discountId, finalPrice, purchaseTime, expiresAt, createdAt);

  @override
  String toString() {
    return 'PurchaseModel(id: $id, status: $status, userId: $userId, categoryId: $categoryId, discountId: $discountId, finalPrice: $finalPrice, purchaseTime: $purchaseTime, expiresAt: $expiresAt, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PurchaseModelCopyWith<$Res> {
  factory $PurchaseModelCopyWith(
          PurchaseModel value, $Res Function(PurchaseModel) _then) =
      _$PurchaseModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String status,
      int userId,
      int categoryId,
      int? discountId,
      double finalPrice,
      DateTime purchaseTime,
      DateTime? expiresAt,
      DateTime createdAt});
}

/// @nodoc
class _$PurchaseModelCopyWithImpl<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  _$PurchaseModelCopyWithImpl(this._self, this._then);

  final PurchaseModel _self;
  final $Res Function(PurchaseModel) _then;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? discountId = freezed,
    Object? finalPrice = null,
    Object? purchaseTime = null,
    Object? expiresAt = freezed,
    Object? createdAt = null,
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
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [PurchaseModel].
extension PurchaseModelPatterns on PurchaseModel {
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
    TResult Function(_PurchaseModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
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
    TResult Function(_PurchaseModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel():
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
    TResult? Function(_PurchaseModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
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
            int categoryId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.categoryId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt,
            _that.createdAt);
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
            int categoryId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel():
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.categoryId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt,
            _that.createdAt);
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
            int categoryId,
            int? discountId,
            double finalPrice,
            DateTime purchaseTime,
            DateTime? expiresAt,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PurchaseModel() when $default != null:
        return $default(
            _that.id,
            _that.status,
            _that.userId,
            _that.categoryId,
            _that.discountId,
            _that.finalPrice,
            _that.purchaseTime,
            _that.expiresAt,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PurchaseModel implements PurchaseModel {
  const _PurchaseModel(
      {required this.id,
      required this.status,
      required this.userId,
      required this.categoryId,
      required this.discountId,
      required this.finalPrice,
      required this.purchaseTime,
      required this.expiresAt,
      required this.createdAt});
  factory _PurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseModelFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final int userId;
  @override
  final int categoryId;
  @override
  final int? discountId;
  @override
  final double finalPrice;
  @override
  final DateTime purchaseTime;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime createdAt;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PurchaseModelCopyWith<_PurchaseModel> get copyWith =>
      __$PurchaseModelCopyWithImpl<_PurchaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PurchaseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PurchaseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.purchaseTime, purchaseTime) ||
                other.purchaseTime == purchaseTime) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, userId, categoryId,
      discountId, finalPrice, purchaseTime, expiresAt, createdAt);

  @override
  String toString() {
    return 'PurchaseModel(id: $id, status: $status, userId: $userId, categoryId: $categoryId, discountId: $discountId, finalPrice: $finalPrice, purchaseTime: $purchaseTime, expiresAt: $expiresAt, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$PurchaseModelCopyWith<$Res>
    implements $PurchaseModelCopyWith<$Res> {
  factory _$PurchaseModelCopyWith(
          _PurchaseModel value, $Res Function(_PurchaseModel) _then) =
      __$PurchaseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      int userId,
      int categoryId,
      int? discountId,
      double finalPrice,
      DateTime purchaseTime,
      DateTime? expiresAt,
      DateTime createdAt});
}

/// @nodoc
class __$PurchaseModelCopyWithImpl<$Res>
    implements _$PurchaseModelCopyWith<$Res> {
  __$PurchaseModelCopyWithImpl(this._self, this._then);

  final _PurchaseModel _self;
  final $Res Function(_PurchaseModel) _then;

  /// Create a copy of PurchaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? discountId = freezed,
    Object? finalPrice = null,
    Object? purchaseTime = null,
    Object? expiresAt = freezed,
    Object? createdAt = null,
  }) {
    return _then(_PurchaseModel(
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
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
