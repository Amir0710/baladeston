import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class ToggleFavorite {
  final FavoriteRepository repository;

  ToggleFavorite(this.repository);
  Future<void> call({required FavoriteEntity favorite}) {
    return repository.toggleFavorite(favorite: favorite);
  }
}
