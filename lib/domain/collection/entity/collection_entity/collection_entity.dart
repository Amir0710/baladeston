import 'package:baladeston/core/enum/collection/collection/collection_status.dart';
import 'package:baladeston/core/enum/collection/collection/collection_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_entity.freezed.dart';

@freezed
abstract class CollectionEntity with _$CollectionEntity {
  const factory CollectionEntity({
    int? id,
    required String title,
    required String description ,
    int? ownerId,
    String? thumbnailUrl,
    CollectionStatus? status,
    CollectionType? type ,
    int? count,
    int? price,
    String? uniqueCode,
    DateTime? lastTransaction,
    DateTime? createdAt,
  }) = _CollectionEntity;
}
