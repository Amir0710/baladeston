import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class CreateFavoriteUseCase {
  final FavoriteRepository repository;

  CreateFavoriteUseCase(this.repository);

  Future<FavoriteEntity> call({required FavoriteEntity favorite}) {
    return repository.createFavorite(favorite: favorite);
  }
}
