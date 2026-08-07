import 'package:baladeston/core/enum/collection/collection/collection_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_entity.freezed.dart';

@freezed
abstract class CollectionEntity with _$CollectionEntity {
  const factory CollectionEntity({
    int? id,
    CollectionStatus? status,
    String? thumbnailUrl,
    int? count,
    int? price ,
    String? uniqueCode,
    DateTime? lastTransaction,
    required int ownerId,
    DateTime? createdAt,
    required String title,
  }) = _CollectionEntity;
}
