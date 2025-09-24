import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class InitThemeUsecase {
  final ThemeRepository repository;

  InitThemeUsecase({required this.repository});

  Future<ThemeEntity?> call () {
    return repository.initTheme();
  }
}