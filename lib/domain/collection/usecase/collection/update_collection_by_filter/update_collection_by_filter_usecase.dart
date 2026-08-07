import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/update_collection_by_filter/update_collection_by_filter_usecase_business_rule.dart';

class UpdateCollectionByFilterUseCase {
  final CollectionRepository repository;

  const UpdateCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    final businessRule = UpdateCollectionByFilterUsecaseBusinessRule(
      collection: collection,
      filter: filter,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.updateCollectionByFilter(
        collection: collection,
        filter: filter,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
