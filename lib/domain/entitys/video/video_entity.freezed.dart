// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoEntity {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get uploaderId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoEntityCopyWith<VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEntityCopyWith<$Res> {
  factory $VideoEntityCopyWith(
          VideoEntity value, $Res Function(VideoEntity) then) =
      _$VideoEntityCopyWithImpl<$Res, VideoEntity>;
  @useResult
  $Res call(
      {int? id,
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
class _$VideoEntityCopyWithImpl<$Res, $Val extends VideoEntity>
    implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? uploaderId = null,
    Object? categoryId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploaderId: null == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoEntityImplCopyWith<$Res>
    implements $VideoEntityCopyWith<$Res> {
  factory _$$VideoEntityImplCopyWith(
          _$VideoEntityImpl value, $Res Function(_$VideoEntityImpl) then) =
      __$$VideoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
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
class __$$VideoEntityImplCopyWithImpl<$Res>
    extends _$VideoEntityCopyWithImpl<$Res, _$VideoEntityImpl>
    implements _$$VideoEntityImplCopyWith<$Res> {
  __$$VideoEntityImplCopyWithImpl(
      _$VideoEntityImpl _value, $Res Function(_$VideoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? thumbnailUrl = freezed,
    Object? status = null,
    Object? uploaderId = null,
    Object? categoryId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$VideoEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploaderId: null == uploaderId
          ? _value.uploaderId
          : uploaderId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$VideoEntityImpl implements _VideoEntity {
  const _$VideoEntityImpl(
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
  final int? id;
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

  @override
  String toString() {
    return 'VideoEntity(id: $id, title: $title, description: $description, videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, status: $status, uploaderId: $uploaderId, categoryId: $categoryId, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoEntityImpl &&
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

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoEntityImplCopyWith<_$VideoEntityImpl> get copyWith =>
      __$$VideoEntityImplCopyWithImpl<_$VideoEntityImpl>(this, _$identity);
}

abstract class _VideoEntity implements VideoEntity {
  const factory _VideoEntity(
      {required final int? id,
      required final String title,
      required final String? description,
      required final String videoUrl,
      required final String? thumbnailUrl,
      required final String status,
      required final int uploaderId,
      required final int categoryId,
      required final DateTime uploadedAt}) = _$VideoEntityImpl;

  @override
  int? get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get videoUrl;
  @override
  String? get thumbnailUrl;
  @override
  String get status;
  @override
  int get uploaderId;
  @override
  int get categoryId;
  @override
  DateTime get uploadedAt;

  /// Create a copy of VideoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoEntityImplCopyWith<_$VideoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
