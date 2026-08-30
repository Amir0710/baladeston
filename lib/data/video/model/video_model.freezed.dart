// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  int? get id => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  VideoStatus? get status => throw _privateConstructorUsedError;
  int? get videoDuration => throw _privateConstructorUsedError;
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  DateTime? get lastTransaction => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  int get recommendedAge => throw _privateConstructorUsedError;
  VideoLevel get level => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  double? get avgRate => throw _privateConstructorUsedError;
  int? get rateCount => throw _privateConstructorUsedError;

  /// Serializes this VideoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {int? id,
      String? thumbnailUrl,
      VideoStatus? status,
      int? videoDuration,
      DateTime? uploadedAt,
      DateTime? lastTransaction,
      String videoUrl,
      int recommendedAge,
      VideoLevel level,
      String title,
      int ownerId,
      String description,
      int price,
      double? avgRate,
      int? rateCount});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
    Object? videoDuration = freezed,
    Object? uploadedAt = freezed,
    Object? lastTransaction = freezed,
    Object? videoUrl = null,
    Object? recommendedAge = null,
    Object? level = null,
    Object? title = null,
    Object? ownerId = null,
    Object? description = null,
    Object? price = null,
    Object? avgRate = freezed,
    Object? rateCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedAge: null == recommendedAge
          ? _value.recommendedAge
          : recommendedAge // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as VideoLevel,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rateCount: freezed == rateCount
          ? _value.rateCount
          : rateCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoModelImplCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$VideoModelImplCopyWith(
          _$VideoModelImpl value, $Res Function(_$VideoModelImpl) then) =
      __$$VideoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? thumbnailUrl,
      VideoStatus? status,
      int? videoDuration,
      DateTime? uploadedAt,
      DateTime? lastTransaction,
      String videoUrl,
      int recommendedAge,
      VideoLevel level,
      String title,
      int ownerId,
      String description,
      int price,
      double? avgRate,
      int? rateCount});
}

/// @nodoc
class __$$VideoModelImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoModelImpl>
    implements _$$VideoModelImplCopyWith<$Res> {
  __$$VideoModelImplCopyWithImpl(
      _$VideoModelImpl _value, $Res Function(_$VideoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? thumbnailUrl = freezed,
    Object? status = freezed,
    Object? videoDuration = freezed,
    Object? uploadedAt = freezed,
    Object? lastTransaction = freezed,
    Object? videoUrl = null,
    Object? recommendedAge = null,
    Object? level = null,
    Object? title = null,
    Object? ownerId = null,
    Object? description = null,
    Object? price = null,
    Object? avgRate = freezed,
    Object? rateCount = freezed,
  }) {
    return _then(_$VideoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as VideoStatus?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTransaction: freezed == lastTransaction
          ? _value.lastTransaction
          : lastTransaction // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedAge: null == recommendedAge
          ? _value.recommendedAge
          : recommendedAge // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as VideoLevel,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      avgRate: freezed == avgRate
          ? _value.avgRate
          : avgRate // ignore: cast_nullable_to_non_nullable
              as double?,
      rateCount: freezed == rateCount
          ? _value.rateCount
          : rateCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoModelImpl implements _VideoModel {
  const _$VideoModelImpl(
      {this.id,
      this.thumbnailUrl,
      this.status,
      this.videoDuration,
      this.uploadedAt,
      this.lastTransaction,
      required this.videoUrl,
      required this.recommendedAge,
      required this.level,
      required this.title,
      required this.ownerId,
      required this.description,
      required this.price,
      this.avgRate,
      this.rateCount});

  factory _$VideoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? thumbnailUrl;
  @override
  final VideoStatus? status;
  @override
  final int? videoDuration;
  @override
  final DateTime? uploadedAt;
  @override
  final DateTime? lastTransaction;
  @override
  final String videoUrl;
  @override
  final int recommendedAge;
  @override
  final VideoLevel level;
  @override
  final String title;
  @override
  final int ownerId;
  @override
  final String description;
  @override
  final int price;
  @override
  final double? avgRate;
  @override
  final int? rateCount;

  @override
  String toString() {
    return 'VideoModel(id: $id, thumbnailUrl: $thumbnailUrl, status: $status, videoDuration: $videoDuration, uploadedAt: $uploadedAt, lastTransaction: $lastTransaction, videoUrl: $videoUrl, recommendedAge: $recommendedAge, level: $level, title: $title, ownerId: $ownerId, description: $description, price: $price, avgRate: $avgRate, rateCount: $rateCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.videoDuration, videoDuration) ||
                other.videoDuration == videoDuration) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.lastTransaction, lastTransaction) ||
                other.lastTransaction == lastTransaction) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.recommendedAge, recommendedAge) ||
                other.recommendedAge == recommendedAge) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.avgRate, avgRate) || other.avgRate == avgRate) &&
            (identical(other.rateCount, rateCount) ||
                other.rateCount == rateCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      thumbnailUrl,
      status,
      videoDuration,
      uploadedAt,
      lastTransaction,
      videoUrl,
      recommendedAge,
      level,
      title,
      ownerId,
      description,
      price,
      avgRate,
      rateCount);

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      __$$VideoModelImplCopyWithImpl<_$VideoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoModelImplToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {final int? id,
      final String? thumbnailUrl,
      final VideoStatus? status,
      final int? videoDuration,
      final DateTime? uploadedAt,
      final DateTime? lastTransaction,
      required final String videoUrl,
      required final int recommendedAge,
      required final VideoLevel level,
      required final String title,
      required final int ownerId,
      required final String description,
      required final int price,
      final double? avgRate,
      final int? rateCount}) = _$VideoModelImpl;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$VideoModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get thumbnailUrl;
  @override
  VideoStatus? get status;
  @override
  int? get videoDuration;
  @override
  DateTime? get uploadedAt;
  @override
  DateTime? get lastTransaction;
  @override
  String get videoUrl;
  @override
  int get recommendedAge;
  @override
  VideoLevel get level;
  @override
  String get title;
  @override
  int get ownerId;
  @override
  String get description;
  @override
  int get price;
  @override
  double? get avgRate;
  @override
  int? get rateCount;

  /// Create a copy of VideoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoModelImplCopyWith<_$VideoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
