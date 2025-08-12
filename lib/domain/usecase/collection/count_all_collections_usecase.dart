import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class CountAllCollectionUseCase {
  final CollectionRepository repository;

  CountAllCollectionUseCase(this.repository);

  Future<int> call() {
    return repository.countAllCollection(filter: CollectionQueryFilter());
  }
}
