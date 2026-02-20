import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/delete_collection_by_id/delete_collection_by_id_usecase_business_rule.dart';

class DeleteCollectionByIdUseCase {
  final CollectionRepository repository;

  const DeleteCollectionByIdUseCase({
    required this.repository,
  });

  Future<Result<int, CollectionFailure>> call({
    required int id,
  }) async {
    try {
      final businessRule = DeleteCollectionByIdUsecaseBusinessRule(id: id);
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.deleteCollectionById(id: id);
  }
}
