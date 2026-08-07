import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/delete_collection_by_id/delete_collection_by_id_usecase_business_rule.dart';

class DeleteCollectionByIdUseCase {
  final CollectionRepository repository;

  const DeleteCollectionByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required int id,
  }) async {

    final businessRule =
    DeleteCollectionByIdUseCaseBusinessRule(collectionId: id);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCollectionById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
