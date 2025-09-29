import 'package:baladeston/data/models/favorite/favorite_model.dart';
import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';

extension FavoriteModelMapper on FavoriteModel {
  FavoriteEntity toEntity() {
    return FavoriteEntity(
      
      userId: userId,
      targetId: targetId,
      interestedIn: interestedIn, id: id,
    );
  }
}

extension FavoriteEntityMapper on FavoriteEntity {
  FavoriteModel toModel() {
    return FavoriteModel(
      userId: userId,
      targetId: targetId,
      interestedIn: interestedIn,id: id,
    );
  }
}
