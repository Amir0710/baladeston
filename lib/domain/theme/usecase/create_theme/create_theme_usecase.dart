import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'create_theme_usecase_business_rule.dart';

class CreateThemeUseCase {
  final ThemeRepository repository;

  const CreateThemeUseCase({required this.repository});

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required ThemeEntity theme,
  }) async {
    try {
      final rule = CreateThemeUseCaseBusinessRule(
        theme: theme,
      );
      rule.validate();
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.createTheme(
      theme: theme,
    );
  }
}
