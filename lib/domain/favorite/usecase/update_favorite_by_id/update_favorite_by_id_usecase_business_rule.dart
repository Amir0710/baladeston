import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_id_exception.dart';

class UpdateFavoriteByIdUsecaseBusinessRule {
  final int id;
  final FavoriteEntity favorite;

  const UpdateFavoriteByIdUsecaseBusinessRule({
    required this.id,
    required this.favorite,
  });

  void validate() {
    _validateId();
    _validateUpdatableFields();
    _validateEntity();
  }

  void _validateId() {
    if (id <= 0) {
      throw FavoriteIdInvalidException();
    }
  }

  void _validateEntity() {
    if (favorite.userId <= 0) {
      throw FavoriteEntityIdInvalidException();
    }
    if(favorite.userId != id){
      throw FavoriteInvalidEntityException();
    }
  }



  void _validateUpdatableFields() {
    final hasUpdate = favorite.targetId > 0;

    if (!hasUpdate) {
      throw FavoriteNoUpdatableFieldsException();
    }
  }
}
