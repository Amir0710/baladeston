import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_filter/get_collection_by_filter_usecase_business_rule.dart';

class GetCollectionByFilterUseCase {
  final CollectionRepository repository;

  const GetCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CollectionEntity>, CollectionFailure>> call({
    required CollectionQueryFilter filter,
  }) async {
    try {
      final businessRule = GetCollectionByFilterUsecaseBusinessRule(filter: filter);
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.getCollectionByFilter(filter: filter);
  }
}
