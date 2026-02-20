import 'package:baladeston/data/collection/model/collection_model.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';

extension CollectionModelMapper on CollectionModel {
  CollectionEntity toEntity() {
    return CollectionEntity(
      id: id,
      title: title,
      password: password,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
    );
  }
}

extension CollectionEntityMapper on CollectionEntity {
  CollectionModel toModel() {
    return CollectionModel(
      id: id,
      title: title,
      password: password,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
    );
  }
}
