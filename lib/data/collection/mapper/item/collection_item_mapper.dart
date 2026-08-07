import 'package:baladeston/data/collection/model/collection_item_model/collection_item_model.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';

extension CollectionItemMapper on CollectionItemModel {
  CollectionItemEntity toEntity() {
    return CollectionItemEntity(
      id: id,
      videoId: videoId,
      collectionId: collectionId,
      adderId: adderId,
      addedAt: addedAt,
      lastTransaction: lastTransaction,
      status: status,
    );
  }
}

extension CollectionItemEntityMapper on CollectionItemEntity {
  CollectionItemModel toModel() {
    return CollectionItemModel(
        id: id,
        videoId: videoId,
        collectionId: collectionId,
        adderId: adderId,
        addedAt: addedAt,
        lastTransaction: lastTransaction,
        status: status);
  }
}
