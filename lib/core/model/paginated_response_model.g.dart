// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedResponseModelImpl<T> _$$PaginatedResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    $checkedCreate(
      r'_$PaginatedResponseModelImpl',
      json,
      ($checkedConvert) {
        final val = _$PaginatedResponseModelImpl<T>(
          items: $checkedConvert(
              'items', (v) => (v as List<dynamic>).map(fromJsonT).toList()),
          nextCursor: $checkedConvert('nextCursor', (v) => v as String?),
          isLast: $checkedConvert('isLast', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PaginatedResponseModelImplToJson<T>(
  _$PaginatedResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'nextCursor': instance.nextCursor,
      'isLast': instance.isLast,
    };
