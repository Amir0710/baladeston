import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_id_exception.dart';

class DeleteFavoriteByIdUseCaseBusinessRule {
  final int id;

  const DeleteFavoriteByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw FavoriteIdInvalidException();
    }
  }

}
