import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class UpdateCollectionUseCase {
  final CollectionRepository repository;

  UpdateCollectionUseCase(this.repository);

  Future<void> call(CollectionEntity collection) {
    return repository.updateCollection(collection: collection);
  }
}
