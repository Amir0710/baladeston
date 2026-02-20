import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_entity_exception.dart';

class CreateCollectionUsecaseBusinessRule {
  final CollectionEntity collection;

  const CreateCollectionUsecaseBusinessRule({
    required this.collection,
  });

  void validate() {
    _validateName();
    _validateOwnerId();
  }

  void _validateName() {
    if (collection.title.isEmpty) {
      throw CollectionEntityTitleTooShortException();
    }
  }

  void _validateOwnerId() {
    if (collection.ownerId <= 0) {
      throw CollectionEntityIdInvalidException();
    }
  }
}

