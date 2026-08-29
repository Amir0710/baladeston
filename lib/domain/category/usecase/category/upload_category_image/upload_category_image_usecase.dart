import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/category/category_repository.dart';
import 'package:baladeston/domain/category/usecase/category/upload_category_image/upload_category_image_usecase_business_rule.dart';
import 'package:image_picker/image_picker.dart';

class UploadCategoryImageUseCase {
  final CategoryRepository repository;

  const UploadCategoryImageUseCase({
    required this.repository,
  });

  Future<Result<String, CategoryFailure>> call({
    required XFile image,
  }) async {
    final businessRule = UploadCategoryImageUseCaseBusinessRule(
      image: image,
    );

    final validationResult = await businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadCategoryImage(
        image: image,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
