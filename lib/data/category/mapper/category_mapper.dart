

import 'package:baladeston/data/category/model/category_model.dart';
import 'package:baladeston/domain/category/entity/category_entity.dart';

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      title: title,
      password: password,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId, lastTransaction: lastTransaction,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity {
  CategoryModel toModel() {
    return CategoryModel(
      id: id,
      title: title,
      password: password,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId, lastTransaction: lastTransaction
    );
  }
}
