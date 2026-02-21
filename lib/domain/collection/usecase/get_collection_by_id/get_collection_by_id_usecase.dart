import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/get_collection_by_id/get_collection_by_id_usecase_business_rule.dart';

class GetCollectionByIdUseCase {
  final CollectionRepository repository;

  GetCollectionByIdUseCase({required this.repository});

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required int id,
  }) async {
    try {
      final businessRule = GetCollectionByIdUsecaseBusinessRule(id: id);
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.getCollectionById(id: id);
  }
}
