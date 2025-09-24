import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class SetThemeUsecase {
  final ThemeRepository repository;

  SetThemeUsecase({required this.repository});


  Future<void> call({required ThemeEntity theme}) {
    return repository.setTheme(theme: theme);
  }
}
