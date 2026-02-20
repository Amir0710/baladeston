import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/create_collection/create_collection_usecase_business_rule.dart';

class CreateCollectionUseCase {
  final CollectionRepository repository;

  const CreateCollectionUseCase({
    required this.repository,
  });

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required CollectionEntity collection,
  }) async {
    try {
      final businessRule = CreateCollectionUsecaseBusinessRule(collection: collection);
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.createCollection(collection: collection);
  }
}
