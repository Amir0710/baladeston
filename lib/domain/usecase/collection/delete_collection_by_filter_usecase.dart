import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class DeleteCollectionByFilterUseCase {
  final CollectionRepository repository;

  DeleteCollectionByFilterUseCase(this.repository);

  Future<void> call({required CollectionQueryFilter filter}) {
    return repository.deleteCollectionByFilter(filter: filter);
  }
}
