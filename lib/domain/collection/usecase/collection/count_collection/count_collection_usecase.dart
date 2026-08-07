import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/count_collection/count_collection_usecase_business_rule.dart';

class CountCollectionUseCase {
  final CollectionRepository repository;

  const CountCollectionUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {
    final businessRule = CountCollectionUsecaseBusinessRule(filter: filter);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (data) => repository.countAllCollection(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
