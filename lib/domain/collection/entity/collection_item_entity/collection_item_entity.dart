import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_item_entity.freezed.dart';

@freezed
abstract class CollectionItemEntity with _$CollectionItemEntity {
  const factory CollectionItemEntity({
    int? id,
    CollectionItemStatus? status,
    DateTime? addedAt,
    DateTime? lastTransaction,
    required int adderId,
    required int videoId,
    required int collectionId,
  }) = _CollectionItemEntity;
}
