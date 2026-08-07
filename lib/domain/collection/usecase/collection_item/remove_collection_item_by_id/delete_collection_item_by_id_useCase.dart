import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/delete_collection_by_id/delete_collection_by_id_usecase_business_rule.dart';

class RemoveCollectionItemByIdUseCase {
  final CollectionItemRepository repository;

  const RemoveCollectionItemByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required int itemId,
  }) async {
    final businessRule =
        DeleteCollectionByIdUseCaseBusinessRule(collectionId: itemId);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.removeCollectionItemById(itemId: itemId),
      failure: (failure) => Result.failure(failure),
    );
  }
}
