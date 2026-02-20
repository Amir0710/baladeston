import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'set_theme_usecase_business_rule.dart';

class SetThemeUseCase {
  final ThemeRepository repository;

  const SetThemeUseCase({
    required this.repository,
  });

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required int id,
  }) async {
    try {
      final rule = SetThemeUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on ThemeIdException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.setTheme(
      id: id,
    );
  }
}
