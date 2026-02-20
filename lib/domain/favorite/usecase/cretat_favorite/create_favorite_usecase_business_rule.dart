import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';

class CreateFavoriteUsecaseBusinessRule {
  final FavoriteEntity favorite;

  const CreateFavoriteUsecaseBusinessRule({
    required this.favorite,
  });

  void validate() {
    _validateOwner();
    _validateTarget();
    _validateTargetType();
  }

  void _validateOwner() {
    if (favorite.userId <= 0) {
      throw FavoriteOwnerRequiredException();
    }
  }

  void _validateTarget() {
    if (favorite.targetId <= 0) {
      throw FavoriteTargetRequiredException();
    }
  }

  void _validateTargetType() {
    // if (favorite.type.isEmpty) {
    //   throw FavoriteTargetTypeInvalidException();
    // }
  }
}
