import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/add_collection_item_usecase/add_collection_item_usecase_business_rule.dart';

class AddCollectionItemUseCase {
  final CollectionItemRepository repository;

  const AddCollectionItemUseCase({
    required this.repository,
  });

  Future<Result<CollectionItemEntity, CollectionFailure>> call({
    required CollectionItemEntity item,
  }) async {
    final businessRule =
        AddCollectionItemUsecaseBusinessRule(collectionItem: item);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) async {
        final result = await repository.addCollectionItem(item: item);
        return result;
      },
      failure: (failure) => Result.failure(failure),
    );
  }
}
