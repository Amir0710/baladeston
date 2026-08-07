import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/get_collection_by_id/get_collection_by_id_usecase_business_rule.dart';

class GetCollectionByIdUseCase {
  final CollectionRepository repository;

  GetCollectionByIdUseCase({required this.repository});

  Future<Result<CollectionEntity, CollectionFailure>> call({
    required int id,
  }) async {
    final businessRule = GetCollectionByIdUsecaseBusinessRule(collectionId: id);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCollectionById(id: id),
      failure: (failure) => Result.failure(failure),
    );
  }
}
