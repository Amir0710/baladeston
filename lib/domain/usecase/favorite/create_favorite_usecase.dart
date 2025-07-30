import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class CreateFavorite {
  final FavoriteRepository repository;

  CreateFavorite(this.repository);
  Future<void> call({required FavoriteEntity favorite}) {
    return repository.createFavorite(favorite: favorite);
  }
}
