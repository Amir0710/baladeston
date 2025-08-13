import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class UpdateFavoriteUseCase {
  final FavoriteRepository repository;

  UpdateFavoriteUseCase(this.repository);
  Future<FavoriteEntity> call({required FavoriteEntity favorite}) {
    return repository.updateFavorite(favorite: favorite);
  }
}
