import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/update_collection_item_by_filter/update_collection_item_by_filter_usecase_business_rule.dart';

class UpdateCollectionItemByFilterUseCase {
  final CollectionItemRepository repository;

  const UpdateCollectionItemByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionItemEntity item,
    required CollectionItemQueryFilter filter,
  }) async {
    final businessRule = UpdateCollectionItemByFilterUseCaseBusinessRule(
      item: item,
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCollectionItemByFilter(
        item: item,
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
