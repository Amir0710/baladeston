import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_filter/update_collection_by_filter_usecase_business_rule.dart';

class UpdateCollectionByFilterUseCase {
  final CollectionRepository repository;

  const UpdateCollectionByFilterUseCase({
    required this.repository,
  });

  Future<Result<List<CollectionEntity>, CollectionFailure>> call({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  }) async {
    try {
      final businessRule = UpdateCollectionByFilterUsecaseBusinessRule(
        collection: collection,
        filter: filter,
      );
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.updateCollectionByFilter(
      collection: collection,
      filter: filter,
    );
  }
}
