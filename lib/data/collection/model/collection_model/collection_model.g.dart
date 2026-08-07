// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionModelImpl _$$CollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CollectionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CollectionModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionStatusEnumMap, v)),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
          uniqueCode: $checkedConvert('uniqueCode', (v) => v as String?),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          ownerId: $checkedConvert('ownerId', (v) => (v as num).toInt()),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          title: $checkedConvert('title', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectionModelImplToJson(
        _$CollectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$CollectionStatusEnumMap[instance.status],
      'thumbnailUrl': instance.thumbnailUrl,
      'count': instance.count,
      'price': instance.price,
      'uniqueCode': instance.uniqueCode,
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'ownerId': instance.ownerId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'title': instance.title,
    };

const _$CollectionStatusEnumMap = {
  CollectionStatus.draft: 'draft',
  CollectionStatus.published: 'published',
  CollectionStatus.hidden: 'hidden',
  CollectionStatus.archived: 'archived',
};
