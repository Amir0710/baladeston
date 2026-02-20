import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';

class DeleteCollectionByIdUsecaseBusinessRule {
  final int id;

  const DeleteCollectionByIdUsecaseBusinessRule({
    required this.id,
  });

  void validate() {
    if (id <= 0) {
      throw CollectionFilterIdException();
    }
  }
}