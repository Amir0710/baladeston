// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_query_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteQueryFilterImpl _$$FavoriteQueryFilterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$FavoriteQueryFilterImpl',
      json,
      ($checkedConvert) {
        final val = _$FavoriteQueryFilterImpl(
          ids: $checkedConvert(
              'ids',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          userId: $checkedConvert('userId', (v) => (v as num?)?.toInt()),
          toggleId: $checkedConvert('toggleId', (v) => (v as num?)?.toInt()),
          interestedIn: $checkedConvert('interestedIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
          favoriteType: $checkedConvert('favoriteType',
              (v) => $enumDecodeNullable(_$FavoriteTypeEnumMap, v)),
          targetType: $checkedConvert(
              'targetType', (v) => $enumDecodeNullable(_$TargetTypeEnumMap, v)),
          ascending: $checkedConvert('ascending', (v) => v as bool? ?? false),
          limit: $checkedConvert('limit', (v) => (v as num?)?.toInt() ?? 20),
          offset: $checkedConvert('offset', (v) => (v as num?)?.toInt() ?? 0),
          orderBy: $checkedConvert(
              'orderBy',
              (v) =>
                  $enumDecodeNullable(_$FavoriteOrderEnumMap, v) ??
                  FavoriteOrder.interestedIn),
        );
        return val;
      },
    );

Map<String, dynamic> _$$FavoriteQueryFilterImplToJson(
        _$FavoriteQueryFilterImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'userId': instance.userId,
      'toggleId': instance.toggleId,
      'interestedIn': instance.interestedIn?.toIso8601String(),
      'favoriteType': _$FavoriteTypeEnumMap[instance.favoriteType],
      'targetType': _$TargetTypeEnumMap[instance.targetType],
      'ascending': instance.ascending,
      'limit': instance.limit,
      'offset': instance.offset,
      'orderBy': _$FavoriteOrderEnumMap[instance.orderBy]!,
    };

const _$FavoriteTypeEnumMap = {
  FavoriteType.like: 'like',
  FavoriteType.starred: 'starred',
  FavoriteType.hate: 'hate',
  FavoriteType.disLike: 'disLike',
};

const _$TargetTypeEnumMap = {
  TargetType.video: 'video',
  TargetType.comment: 'comment',
  TargetType.category: 'category',
  TargetType.collection: 'collection',
};

const _$FavoriteOrderEnumMap = {
  FavoriteOrder.interestedIn: 'interestedIn',
};
