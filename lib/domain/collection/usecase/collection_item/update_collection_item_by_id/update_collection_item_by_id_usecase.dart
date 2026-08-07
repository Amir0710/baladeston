import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_id/update_collection_item_by_id_useCase_business_rule.dart';

class UpdateCollectionItemByIdUseCase {
  final CollectionItemRepository repository;

  const UpdateCollectionItemByIdUseCase({
    required this.repository,
  });

  Future<Result<CollectionItemEntity, CollectionFailure>> call({
    required int id,
    required CollectionItemEntity item,
  }) async {
    final businessRule =
        UpdateCollectionItemByIdUseCaseBusinessRule(entity: item, id: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) async {
        final result =
            await repository.updateCollectionItemById(item: item, id: id);
        return result;
      },
      failure: (failure) => Result.failure(failure),
    );
  }
}
