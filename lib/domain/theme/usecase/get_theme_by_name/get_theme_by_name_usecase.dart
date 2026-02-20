import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'get_theme_by_name_usecase_business_rule.dart';

class GetThemeByNameUseCase {
  final ThemeRepository repository;

  const GetThemeByNameUseCase(this.repository);

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required String name,
  }) async {
    try {
      final rule = GetThemeByNameUseCaseBusinessRule(
        name: name,
      );
      rule.validate();
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.getThemeByName(
      name: name,
    );
  }
}
