import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class GetCollectionByIdUseCase {
  final CollectionRepository repository;

  GetCollectionByIdUseCase(this.repository);

  Future<CollectionEntity?> call({required int id}) {
    return repository.getCollectionById(id : id);
  }
}
