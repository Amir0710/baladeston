

import 'package:baladeston/data/models/category/category_model.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';

extension CategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      title: title,
      password: password,
      price: price,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity {
  CategoryModel toModel() {
    return CategoryModel(
      id: this.id,
      title: title,
      password: password,
      price: price,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
    );
  }
}
