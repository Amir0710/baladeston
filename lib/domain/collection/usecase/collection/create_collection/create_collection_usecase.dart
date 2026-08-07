import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/create_collection/create_collection_usecase_business_rule.dart';

class CreateCollectionUseCase {
  final CollectionRepository repository;

  const CreateCollectionUseCase({
    required this.repository,
  });

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required CollectionEntity collection,
  }) async {
    final businessRule =
        CreateCollectionUsecaseBusinessRule(collection: collection);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.createCollection(collection: collection),
      failure: (failure) => Result.failure(failure),
    );
  }
}
