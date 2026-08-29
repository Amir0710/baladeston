import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/category/filter/item/category_item_query_filter.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/get_collections_by_category_item_filter/get_collections_by_category_item_filter_usecase_business_rule.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';

class GetCollectionsByCategoryItemFilterUseCase {
  final CategoryItemRepository repository;

  const GetCollectionsByCategoryItemFilterUseCase({
    required this.repository,
  });

  Future<Result<PaginatedResponseModel<CollectionEntity>, CategoryFailure>> call({
    required CategoryItemQueryFilter categoryItemFilter,
    required CollectionQueryFilter collectionFilter,
  }) async {
    final businessRule = GetCollectionsByCategoryItemFilterUsecaseBusinessRule(
      collectionQueryFilter: collectionFilter,
      categoryItemFilter: categoryItemFilter,
    );
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCollectionsByCategoryItemFilter(
        categoryItemFilter: categoryItemFilter,
        collectionFilter: collectionFilter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
