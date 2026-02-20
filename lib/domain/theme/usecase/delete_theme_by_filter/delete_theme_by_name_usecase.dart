import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'delete_theme_by_name_usecase_business_rule.dart';

class DeleteThemeByNameUseCase {
  final ThemeRepository repository;

  const DeleteThemeByNameUseCase(this.repository);

  Future<Result<void, ThemeFailure>> call({
    required String name,
  }) async {
    try {
      final rule = DeleteThemeByNameUseCaseBusinessRule(
        name: name,
      );
      rule.validate();
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.deleteThemeByName(
      name: name,
    );
  }
}
