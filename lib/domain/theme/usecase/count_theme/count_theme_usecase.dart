import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/exception/theme_filter_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';
import 'count_theme_usecase_business_rule.dart';

class CountThemeUseCase {
  final ThemeRepository repository;

  const CountThemeUseCase(this.repository);

  Future<Result<int, ThemeFailure>> call({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final rule = CountThemeUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ThemeFilterException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.countAllThemes(
      filter: filter,
    );
  }
}
