// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CategoryModelImpl',
      json,
      ($checkedConvert) {
        final val = _$CategoryModelImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          parent: $checkedConvert('parent', (v) => (v as num?)?.toInt()),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$CategoryTypeEnumMap, v)),
          avgRate: $checkedConvert('avgRate', (v) => (v as num?)?.toDouble()),
          rageCount: $checkedConvert('rageCount', (v) => (v as num?)?.toInt()),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CategoryStatusEnumMap, v)),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          ownerId: $checkedConvert('ownerId', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'type': _$CategoryTypeEnumMap[instance.type]!,
      'avgRate': instance.avgRate,
      'rageCount': instance.rageCount,
      'status': _$CategoryStatusEnumMap[instance.status],
      'thumbnailUrl': instance.thumbnailUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'ownerId': instance.ownerId,
    };

const _$CategoryTypeEnumMap = {
  CategoryType.root: 'root',
  CategoryType.published: 'published',
  CategoryType.organizational: 'organizational',
};

const _$CategoryStatusEnumMap = {
  CategoryStatus.active: 'active',
  CategoryStatus.inactive: 'inactive',
  CategoryStatus.archived: 'archived',
};
