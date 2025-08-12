import 'package:baladeston/domain/repositories/collection_repository.dart';

class DeleteCollectionByIdUseCase {
  final CollectionRepository repository;

  DeleteCollectionByIdUseCase(this.repository);

  Future<void> call({required int id}) {
    return repository.getCollectionById(id : id);
  }
}
