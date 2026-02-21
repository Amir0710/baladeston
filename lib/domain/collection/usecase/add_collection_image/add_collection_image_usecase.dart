import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/exception/collection_filter_exception.dart';
import 'package:baladeston/domain/collection/failure/collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/add_collection_image/add_collection_image_usecase_business_rule.dart';

class UploadCollectionImageUseCase {
  final CollectionRepository repository;

  const UploadCollectionImageUseCase({
    required this.repository,
  });

  Future<Object> call({
    required int collectionId,
    required File image,
  }) async {
    try {
      final businessRule = AddCollectionImageUsecaseBusinessRule(
        collectionId: collectionId, image: image
      );
      businessRule.validate();
    } on CollectionFilterException catch (e) {
      return Result.failure(CollectionValidationFailure(e.message));
    }

    return repository.uploadCollectionImage(
      id: collectionId,
      image: image,
    );
  }
}
