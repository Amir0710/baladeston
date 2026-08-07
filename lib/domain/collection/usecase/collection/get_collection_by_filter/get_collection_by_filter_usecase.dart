import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/get_collection_by_filter/get_collection_by_filter_usecase_business_rule.dart';

class GetCollectionByFilterUseCase {
  final CollectionRepository repository;

  const GetCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CollectionEntity>, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {

    final businessRule =
    GetCollectionByFilterUsecaseBusinessRule(filter: filter);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCollectionByFilter(collectionItemFilter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
