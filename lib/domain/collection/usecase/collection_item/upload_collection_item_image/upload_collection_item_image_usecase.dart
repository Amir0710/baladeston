import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/repository/item/collection_item_repository.dart';
import 'package:baladeston/domain/collection/usecase/collection_item/upload_collection_item_image/upload_collection_item_image_usecase_business_rule.dart';
import 'package:image_picker/image_picker.dart';

class UploadCollectionItemImageUseCase {
  final CollectionItemRepository repository;

  const UploadCollectionItemImageUseCase({
    required this.repository,
  });

  Future<Result<String, CollectionFailure>> call({
    required XFile image,
  }) async {
    final businessRule = UploadCollectionItemImageUseCaseBusinessRule(
      image: image,
    );

    final validationResult = await businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadCollectionItemImage(
        image: image,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
