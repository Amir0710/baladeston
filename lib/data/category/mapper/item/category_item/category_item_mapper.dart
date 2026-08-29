// path: lib/data/category/mapper/category_item_mapper.dart

import 'package:baladeston/data/category/model/category_item_model/category_item_model.dart';
import 'package:baladeston/domain/category/entity/category_item_entity/category_item_entity.dart';

extension CategoryItemModelMapper on CategoryItemModel {
  CategoryItemEntity toEntity() {
    return CategoryItemEntity(

      id: id,
      title: title,
      thumbnailUrl: thumbnailUrl,
      avgRate: avgRate,
      rageCount: rageCount,
      status: status,
      addedAt: addedAt,
      lastTransaction: lastTransaction,
      adderId: adderId,
      collectionId: collectionId,
      categoryId: categoryId,
    );
  }
}

extension CategoryItemEntityMapper on CategoryItemEntity {
  CategoryItemModel toModel() {
    return CategoryItemModel(
      id: id,
      title: title,
      thumbnailUrl: thumbnailUrl,
      avgRate: avgRate,
      rageCount: rageCount,
      status: status,
      addedAt: addedAt,
      lastTransaction: lastTransaction,
      adderId: adderId,
      collectionId: collectionId,
      categoryId: categoryId,
    );
  }
}
