import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'update_theme_by_filter_usecase_business_rule.dart';

class UpdateThemeByFilterUseCase {
  final ThemeRepository repository;

  const UpdateThemeByFilterUseCase({
    required this.repository,
  });

  Future<Result<ThemeEntity, ThemeFailure>> call({
    required ThemeQueryFilter filter,
    required ThemeEntity theme,
  }) async {
    try {
      final rule = UpdateThemeByFilterUseCaseBusinessRule(
        filter: filter,
        theme: theme,
      );
      rule.validate();
    } on ThemeFilterException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    /// ✅ delegation only – same pattern as GetAllThemeUseCase
    return repository.updateThemeByFilter(
      filter: filter,
      theme: theme,
    );
  }
}
