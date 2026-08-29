import 'package:baladeston/data/category/model/category_model/category_model.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      type: type,

      title: title,
      description: description,
      avgRate: avgRate,
      rageCount: rageCount,
      parent: parent,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity {
  CategoryModel toModel() {
    return CategoryModel(
      id: id,
      type: type,
      title: title,
      description: description,
      avgRate: avgRate,
      rageCount: rageCount,
      parent: parent,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
    );
  }
}
