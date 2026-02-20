import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'delete_theme_by_id_usecase_business_rule.dart';

class DeleteThemeByIdUseCase {
  final ThemeRepository repository;

  const DeleteThemeByIdUseCase(this.repository);

  Future<Result<void, ThemeFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteThemeByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on ThemeIdException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.deleteThemeById(
      id: id!,
    );
  }
}
