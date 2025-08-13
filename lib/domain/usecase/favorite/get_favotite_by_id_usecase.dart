import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/repositories/favorite_repository.dart';

class GetFavoriteByIdUseCase {
  final FavoriteRepository repository;

  GetFavoriteByIdUseCase(this.repository);

  Future<FavoriteEntity?> call({required int id}) {
    return repository.getFavoriteById(id: id);
  }
}
