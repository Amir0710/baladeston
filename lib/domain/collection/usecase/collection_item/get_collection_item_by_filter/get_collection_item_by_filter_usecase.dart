import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/item/collection_item_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_item_entity/collection_item_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/get_collection_item_by_filter/get_collection_item_by_filter_usecase_business_rule.dart';

class GetCollectionItemByCollectionItemFilterUseCase {
  final CollectionItemRepository repository;

  const GetCollectionItemByCollectionItemFilterUseCase({
    required this.repository,
  });

  Future<Result<PaginatedResponseModel<CollectionItemEntity>, CollectionFailure>>
      call({
    required CollectionItemQueryFilter collectionItemFilter,
  }) async {
    final businessRule = GetCollectionItemByFilterUsecaseBusinessRule(
        filter: collectionItemFilter);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCollectionItemByCollectionFilter(
          collectionItemFilter: collectionItemFilter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
