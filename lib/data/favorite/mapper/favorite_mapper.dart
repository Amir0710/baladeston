import 'package:baladeston/data/favorite/model/favorite_model.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';

extension FavoriteModelMapper on FavoriteModel {
  FavoriteEntity toEntity() {
    return FavoriteEntity(
      userId: userId,
      targetId: targetId,
      interestedIn: interestedIn,
      id: id,
      type: type,
    );
  }
}

extension FavoriteEntityMapper on FavoriteEntity {
  FavoriteModel toModel() {
    return FavoriteModel(
      userId: userId,
      targetId: targetId,
      interestedIn: interestedIn,
      id: id,
      type: type,

    );
  }
}
