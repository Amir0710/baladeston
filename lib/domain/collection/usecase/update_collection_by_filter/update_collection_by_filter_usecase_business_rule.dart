import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_entity_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';

class UpdateCollectionByFilterUsecaseBusinessRule {
  final CollectionEntity collection;
  final CollectionQueryFilter filter;

  const UpdateCollectionByFilterUsecaseBusinessRule({
    required this.collection,
    required this.filter,
  });

  void validate() {
    _validateFilter();
    _validateEntity();
  }

  void _validateFilter() {
    final hasAnyFilter =
        filter.id != null ||
            filter.searchId != null ||
            (filter.searchTerm != null && filter.searchTerm!.isNotEmpty) ||
            filter.status != null ||
            filter.ownerId != null ||
            filter.minCount != null ||
            filter.maxCount != null;
    if (!hasAnyFilter) {
      throw CollectionFilterEmptyException();
    }
  }

  void _validateEntity() {
    if (collection.title.isEmpty) {
      throw CollectionEntityTitleEmptyException();
    }
    if (collection.ownerId <= 0) {
      throw CollectionEntityOwnerIdInvalidException();
    }
  }
}
