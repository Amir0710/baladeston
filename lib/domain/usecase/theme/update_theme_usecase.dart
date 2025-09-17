import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class UpdateThemeUseCase {
  final ThemeRepository repository;

  UpdateThemeUseCase({required this.repository});


  Future<void> call({required ThemeEntity theme}) {
    return repository.updateTheme(theme: theme);
  }
}
