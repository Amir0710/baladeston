import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/category/entity/category_entity/category_entity.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_entity_failure.dart';

class CreateCategoryUsecaseBusinessRule {
  final CategoryEntity category;

  const CreateCategoryUsecaseBusinessRule({
    required this.category,
  });

  Result<void, CategoryFailure> validate() {
    return _entityValidation();
  }

  Result<void, CategoryFailure> _entityValidation() {

    //  parent id
    if (category.parent != null && category.parent! <= 0) {
      return const Result.failure(CategoryEntityInvalidParentFailure());
    }

    // title
    final title = category.title.trim();
    if (title.isEmpty) {
      return const Result.failure(CategoryEntityMissingTitleFailure());
    }
    if (title.length < 3 || title.length > 100) {
      return const Result.failure(CategoryEntityInvalidTitleFailure());
    }

    // ownerId
    if (category.ownerId <= 0) {
      return const Result.failure(CategoryEntityInvalidOwnerIdFailure());
    }

    // thumbnail url
    if (category.thumbnailUrl != null) {
      final thumbnail = category.thumbnailUrl!.trim();
      if (thumbnail.isEmpty || !_isValidUrl(thumbnail)) {
        return const Result.failure(CategoryEntityInvalidThumbnailUrlFailure());
      }
    }

    // createdAt
    if (category.createdAt != null && category.createdAt!.isAfter(DateTime.now())) {
      return const Result.failure(CategoryEntityInvalidCreatedAtFailure());
    }

    // lastTransaction
    if (category.lastTransaction != null && category.lastTransaction!.isAfter(DateTime.now())) {
      return const Result.failure(CategoryEntityInvalidLastTransactionFailure());
    }

    return const Result.success(null);
  }

  bool _isValidUrl(String url) {
    final uri = Uri.tryParse(url);
    return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
  }
}
