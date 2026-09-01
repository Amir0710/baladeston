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
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$CollectionStatusEnumMap, v)),
          type: $checkedConvert(
              'type', (v) => $enumDecodeNullable(_$CollectionTypeEnumMap, v)),
          count: $checkedConvert('count', (v) => (v as num?)?.toInt()),
          price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
          uniqueCode: $checkedConvert('uniqueCode', (v) => v as String?),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CollectionModelImplToJson(
        _$CollectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'ownerId': instance.ownerId,
      'thumbnailUrl': instance.thumbnailUrl,
      'status': _$CollectionStatusEnumMap[instance.status],
      'type': _$CollectionTypeEnumMap[instance.type],
      'count': instance.count,
      'price': instance.price,
      'uniqueCode': instance.uniqueCode,
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$CollectionStatusEnumMap = {
  CollectionStatus.published: 'published',
  CollectionStatus.pendingApproval: 'pendingApproval',
  CollectionStatus.draft: 'draft',
  CollectionStatus.suspended: 'suspended',
  CollectionStatus.active: 'active',
  CollectionStatus.inactive: 'inactive',
};

const _$CollectionTypeEnumMap = {
  CollectionType.public: 'public',
  CollectionType.private: 'private',
  CollectionType.team: 'team',
};
