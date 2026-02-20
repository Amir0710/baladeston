import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_entity_exception.dart';
import 'package:baladeston/domain/collection/exception/collection_id_exception.dart';

class UpdateCollectionByIdUsecaseBusinessRule {
  final CollectionEntity collection;
  final int id;

  const UpdateCollectionByIdUsecaseBusinessRule({
    required this.collection,
    required this.id,
  });

  void validate() {
    _validateId();
    _validateEntity();
  }

  void _validateId() {
    if (id <= 0) {
      throw CollectionIdInvalidException();
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
