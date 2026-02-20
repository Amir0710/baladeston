import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/update_collection_by_id/update_collection_by_id_usecase_business_rule.dart';

class UpdateCollectionByIdUseCase {
  final CollectionRepository repository;

  const UpdateCollectionByIdUseCase({
    required this.repository,
  });

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required CollectionEntity collection,
    required int id,
  }) async {
    try {
      final businessRule = UpdateCollectionByIdUsecaseBusinessRule(
        collection: collection,
        id: id,
      );
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.updateCollectionById(collection: collection, id: id);
  }
}
