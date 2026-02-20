import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'update_theme_by_id_usecase_business_rule.dart';

class UpdateThemeByIdUseCase {
  final ThemeRepository repository;

  const UpdateThemeByIdUseCase({
    required this.repository,
  });

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required int id,
    required ThemeEntity theme,
  }) async {
    try {
      final rule = UpdateThemeByIdUseCaseBusinessRule(
        id: id,
        theme: theme,
      );
      rule.validate();
    } on ThemeIdException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    /// ✅ delegation only (repo already returns Result)
    return repository.updateThemeById(
      id: id,
      theme: theme,
    );
  }
}
