import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'get_all_theme_usecase_business_rule.dart';

class GetAllThemeUseCase {
  final ThemeRepository repository;

  const GetAllThemeUseCase(this.repository);

  Future<Result<List<ThemeEntity>, ThemeFailure>> call({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final rule = GetAllThemeUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ThemeFilterException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.getAllThemes(
      filter: filter,
    );
  }
}
