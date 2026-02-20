import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'get_theme_by_id_usecase_business_rule.dart';

class GetThemeByIdUseCase {
  final ThemeRepository repository;

  const GetThemeByIdUseCase(this.repository);

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetThemeByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on ThemeIdException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.getThemeById(
      id: id,
    );
  }
}
