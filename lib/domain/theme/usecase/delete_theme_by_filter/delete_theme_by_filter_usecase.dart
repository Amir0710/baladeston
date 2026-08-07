import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

import 'delete_theme_by_filter_usecase_business_rule.dart';

class DeleteThemeByFilterUseCase {
  final ThemeRepository repository;

  const DeleteThemeByFilterUseCase({required this.repository});

  Future<Result<List<int>, ThemeFailure>> call({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final rule = DeleteThemeByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }

    return repository.deleteThemeByFilter(
      filter: filter,
    );
  }
}
