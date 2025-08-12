import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class CreateCollectionUseCase {
  final CollectionRepository repository;

  CreateCollectionUseCase(this.repository);

  Future<void> call(CollectionEntity collection) {
    return repository.createCollection(collection: collection);
  }
}
