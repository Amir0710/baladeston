import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/count_all/count_all_collection_usecase_business_rule.dart';

class CountAllCollectionUseCase {
  final CollectionRepository repository;

  const CountAllCollectionUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final businessRule =
      CountAllCollectionUsecaseBusinessRule(filter: filter);
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(
        CollectionValidationFailure(e.message),
      );
    }

    return repository.countAllCollection(filter: filter);
  }
}
