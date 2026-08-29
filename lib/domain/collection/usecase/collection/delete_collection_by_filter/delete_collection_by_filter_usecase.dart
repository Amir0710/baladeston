import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/delete_collection_by_filter/delete_collection_by_filter_usecase_business_rule.dart';

class DeleteCollectionByFilterUseCase {
  final CollectionRepository repository;

  const DeleteCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {

    final businessRule =
    DeleteCollectionByFilterUsecaseBusinessRule(filter: filter);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.deleteCollectionByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
