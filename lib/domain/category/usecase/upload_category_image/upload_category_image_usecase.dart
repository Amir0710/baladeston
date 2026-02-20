import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/exception/category_image_exception.dart';
import 'package:baladeston/domain/category/failure/category_failure.dart';
import 'package:baladeston/domain/category/repository/category_repository.dart';
import 'package:baladeston/domain/category/usecase/upload_category_image/upload_category_image_usecase_business_rule.dart';

class UploadCategoryImageUseCase {
  final CategoryRepository repository;

  const UploadCategoryImageUseCase({
    required this.repository,
  });

  Future<Result<String, CategoryFailure>> call({
    required int id,
    required File image,

  }) async {
    final business = UploadCategoryImageUseCaseBusinessRule(image: image);
    try {
      business.validate();
    } on CategoryImageException catch (e) {
      return Result.failure(
        ValidationFailure(e.message),
      );
    }

    return repository.uploadCategoryImage(id: id, image: image);
  }
}
