import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/collection/collection_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection/upload_collection_image/upload_collection_image_usecase_business_rule.dart';

class UploadCollectionImageUseCase {
  final CollectionRepository repository;

  const UploadCollectionImageUseCase({
    required this.repository,
  });

    Future<Result<String, CollectionFailure>> call({
    required File image,
  }) async {
    final businessRule = UploadCollectionImageUsecaseBusinessRule(
      image: image,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (data) => repository.uploadCollectionImage(
        image: image,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
