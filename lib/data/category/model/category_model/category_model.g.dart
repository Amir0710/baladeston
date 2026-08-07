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
          password: $checkedConvert('password', (v) => v as String?),
          thumbnailUrl: $checkedConvert('thumbnailUrl', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastTransaction: $checkedConvert('lastTransaction',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$CategoryStatusEnumMap, v)),
          ownerId: $checkedConvert('ownerId', (v) => (v as num).toInt()),
          title: $checkedConvert('title', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'thumbnailUrl': instance.thumbnailUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
      'status': _$CategoryStatusEnumMap[instance.status],
      'ownerId': instance.ownerId,
      'title': instance.title,
    };

const _$CategoryStatusEnumMap = {
  CategoryStatus.active: 'active',
  CategoryStatus.inactive: 'inactive',
  CategoryStatus.archived: 'archived',
};
