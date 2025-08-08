import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class GetFavoriteByFilter {
  final FavoriteRepository repository;

  GetFavoriteByFilter(this.repository);

  Future<FavoriteEntity> call(int id) {
    return repository.getfavoriteById(id: id);
  }
}
