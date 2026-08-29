import 'package:baladeston/data/favorite/model/favorite_model.dart';
import 'package:baladeston/domain/favorite/entity/favorite/favorite_entity.dart';

extension FavoriteModelMapper on FavoriteModel {
  FavoriteEntity toEntity() {
    return FavoriteEntity(
      id: id,
      ownerId: ownerId,
      targetId: targetId,
      interestedIn: interestedIn,
      favoriteType: favoriteType,
      targetType: targetType,
    );
  }
}

extension FavoriteEntityMapper on FavoriteEntity {
  FavoriteModel toModel() {
    return FavoriteModel(
      id: id,
      ownerId: ownerId,
      targetId: targetId,
      interestedIn: interestedIn,
      favoriteType: favoriteType,
      targetType: targetType,
    );
  }
}
