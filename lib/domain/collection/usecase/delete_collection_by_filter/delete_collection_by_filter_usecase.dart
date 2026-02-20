import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_filter/delete_collection_by_filter_usecase_business_rule.dart';

class DeleteCollectionByFilterUseCase {
  final CollectionRepository repository;

  const DeleteCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<int>, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final businessRule = DeleteCollectionByFilterUsecaseBusinessRule(filter: filter);
      businessRule.validate();

    } on CollectionFilterException catch (e) {

      return Result.failure(CollectionValidationFailure(e.message));

    }

    return repository.deleteCollectionByFilter(filter: filter);

  }

}