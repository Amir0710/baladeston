import 'package:baladeston/domain/repositories/favorite_repository.dart';

class DeleteFavoriteByIdUseCase {
  final FavoriteRepository repository;

  DeleteFavoriteByIdUseCase(this.repository);

  Future<void> call({required int id}) {
    return repository.deleteFavoriteById(id: id);
  }
}
