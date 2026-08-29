// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoQueryFilterImpl _$$VideoQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VideoQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$VideoQueryFilterImpl(
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          searchTerm: $checkedConvert('searchTerm', (v) => v as String?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$VideoStatusEnumMap, v)),
          uploaderId:
              $checkedConvert('uploaderId', (v) => (v as num?)?.toInt()),
          minRecommendedAge:
              $checkedConvert('minRecommendedAge', (v) => (v as num?)?.toInt()),
          maxRecommendedAge:
              $checkedConvert('maxRecommendedAge', (v) => (v as num?)?.toInt()),
          level: $checkedConvert(
              'level', (v) => $enumDecodeNullable(_$VideoLevelEnumMap, v)),
          minRating:
              $checkedConvert('minRating', (v) => (v as num?)?.toDouble()),
          uploadedAfter: $checkedConvert('uploadedAfter',
              (v) => v == null ? null : DateTime.parse(v as String)),
          uploadedBefore: $checkedConvert('uploadedBefore',
              (v) => v == null ? null : DateTime.parse(v as String)),
          videoDuration:
              $checkedConvert('videoDuration', (v) => (v as num?)?.toInt()),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          minPrice: $checkedConvert('minPrice', (v) => (v as num?)?.toInt()),
          maxPrice: $checkedConvert('maxPrice', (v) => (v as num?)?.toInt()),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          cursor: $checkedConvert('cursor', (v) => v as String?),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          order: $checkedConvert(
              'order',
              (v) =>
                  $enumDecodeNullable(_$VideoOrderEnumMap, v) ??
                  VideoOrder.createdAt),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VideoQueryFilterImplToJson(
        _$VideoQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'searchTerm': instance.searchTerm,
      'status': _$VideoStatusEnumMap[instance.status],
      'uploaderId': instance.uploaderId,
      'minRecommendedAge': instance.minRecommendedAge,
      'maxRecommendedAge': instance.maxRecommendedAge,
      'level': _$VideoLevelEnumMap[instance.level],
      'minRating': instance.minRating,
      'uploadedAfter': instance.uploadedAfter?.toIso8601String(),
      'uploadedBefore': instance.uploadedBefore?.toIso8601String(),
      'videoDuration': instance.videoDuration,
      'ownerId': instance.ownerId,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'limit': instance.limit,
      'cursor': instance.cursor,
      'ascending': instance.ascending,
      'order': _$VideoOrderEnumMap[instance.order]!,
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

const _$VideoOrderEnumMap = {
  VideoOrder.title: 'title',
  VideoOrder.createdAt: 'createdAt',
  VideoOrder.price: 'price',
  VideoOrder.duration: 'duration',
};
