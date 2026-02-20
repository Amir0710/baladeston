import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';
import 'package:baladeston/domain/theme/failure/theme_failure.dart';
import 'package:baladeston/domain/theme/repository/theme_repository.dart';

class InitThemeUseCase {
  final ThemeRepository repository;

  const InitThemeUseCase({
    required this.repository,
  });

  Future<Result<ThemeEntity, ThemeFailure>> call() async {
    try {
      final theme = await repository.initTheme();
      return Result.success(theme as ThemeEntity);
    } on ThemeEntityException catch (e) {
      return Result.failure(
        ThemeValidationFailure(e.message),
      );
    }
  }
}
