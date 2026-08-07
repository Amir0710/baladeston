import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/update_collection_by_id/update_collection_by_id_usecase_business_rule.dart';

class UpdateCollectionByIdUseCase {
  final CollectionRepository repository;

  const UpdateCollectionByIdUseCase({
    required this.repository,
  });

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required CollectionEntity collection,
    required int id,
  }) async {
    final businessRule = UpdateCollectionByIdUsecaseBusinessRule(
      collection: collection,
      id: id,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCollectionById(
        collection: collection,
        id: id,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
