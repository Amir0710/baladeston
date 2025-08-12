import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/repositories/collection_repository.dart';

class GetCollectionUseCase {
  final CollectionRepository repository;

  GetCollectionUseCase(this.repository);

  Future<List<CollectionEntity>> call(CollectionQueryFilter filter) {
    return repository.getCollectionByFilter(filter: filter);
  }
}
