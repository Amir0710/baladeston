import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/upload_category_image/upload_category_image_usecase_business_rule.dart';

class UploadCategoryImageUseCase {
  final CategoryRepository repository;

  const UploadCategoryImageUseCase({
    required this.repository,
  });

  Future<Result<String, CategoryFailure>> call({
    required File image,
  }) async {
    final businessRule = UploadCategoryImageUseCaseBusinessRule(
      image: image,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadCategoryImage(
        image: image,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
