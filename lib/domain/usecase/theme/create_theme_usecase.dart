import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class CreateThemeUseCase {
  final ThemeRepository repository;

  CreateThemeUseCase({required this.repository});

  Future<ThemeEntity?> call({required ThemeEntity theme}) {
    return repository.createTheme(theme: theme);
  }
}
