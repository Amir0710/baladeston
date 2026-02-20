import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';

class GetCollectionByIdUsecaseBusinessRule {
  final int id;

  const GetCollectionByIdUsecaseBusinessRule({
    required this.id,
  });

  void validate() {
    if (id <= 0) {
      throw CollectionFilterIdException();
    }
  }
}

