// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VideoModelImpl',
      json,
      ($checkedConvert) {
        final val = _$VideoModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$VideoStatusEnumMap, v)),
          videoDuration:
              $checkedConvert('videoDuration', (v) => (v as num?)?.toInt()),
          uploadedAt: $checkedConvert('uploadedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          videoUrl: $checkedConvert('videoUrl', (v) => v as String),
          recommendedAge:
              $checkedConvert('recommendedAge', (v) => (v as num).toInt()),
          level: $checkedConvert(
              'level', (v) => $enumDecode(_$VideoLevelEnumMap, v)),
          title: $checkedConvert('title', (v) => v as String),
          ownerId: $checkedConvert('ownerId', (v) => (v as num).toInt()),
          description: $checkedConvert('description', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': _$VideoStatusEnumMap[instance.status],
      'videoDuration': instance.videoDuration,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'videoUrl': instance.videoUrl,
      'recommendedAge': instance.recommendedAge,
      'level': _$VideoLevelEnumMap[instance.level]!,
      'title': instance.title,
      'ownerId': instance.ownerId,
      'description': instance.description,
      'price': instance.price,
    };

const _$VideoStatusEnumMap = {
  VideoStatus.draft: 'draft',
  VideoStatus.published: 'published',
  VideoStatus.hidden: 'hidden',
  VideoStatus.archived: 'archived',
};

const _$VideoLevelEnumMap = {
  VideoLevel.beginner: 'beginner',
  VideoLevel.intermediate: 'intermediate',
  VideoLevel.advanced: 'advanced',
};
