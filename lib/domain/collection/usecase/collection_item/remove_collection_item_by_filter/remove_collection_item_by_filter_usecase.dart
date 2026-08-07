import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/remove_collection_item_by_filter/remove_collection_item_by_filter_usecase_business_rule.dart';

class RemoveCollectionItemByFilterUseCase {
  final CollectionItemRepository repository;

  const RemoveCollectionItemByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionItemQueryFilter filter,
  }) async {
    final businessRule =
        RemoveCollectionItemByFilterUseCaseBusinessRule(filter: filter);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.removeCollectionItemByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
