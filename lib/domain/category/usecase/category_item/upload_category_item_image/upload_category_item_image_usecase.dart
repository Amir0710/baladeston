import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/repository/item/category_item_repository.dart';
import 'package:baladeston/domain/category/usecase/category_item/upload_category_item_image/upload_category_item_image_usecase_business_rule.dart';
import 'package:image_picker/image_picker.dart';

class UploadCategoryItemImageUseCase {
  final CategoryItemRepository repository;

  const UploadCategoryItemImageUseCase({
    required this.repository,
  });

  Future<Result<String, CategoryFailure>> call({
    required XFile image,
  }) async {
    final businessRule = UploadCategoryItemImageUseCaseBusinessRule(
      image: image,
    );

    final validationResult = await businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadCategoryItemImage(
        image: image,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
