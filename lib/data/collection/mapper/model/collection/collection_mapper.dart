import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';

extension CollectionModelMapper on CollectionModel {
  CollectionEntity toEntity() {
    return CollectionEntity(
      type: type,
      id: id,
      title: title,
      description: description,
      avgRate: avgRate,
      rateCount: rateCount,
      status: status,
      price: price,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
      count: count,
      uniqueCode: uniqueCode,
    );
  }
}

extension CollectionEntityMapper on CollectionEntity {
  CollectionModel toModel() {
    return CollectionModel(
      type: type,
      id: id,
      title: title,
      description: description,
      avgRate: avgRate,
      rateCount: rateCount,
      status: status,
      price: price,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
      count: count,
      uniqueCode: uniqueCode,
    );
  }
}
