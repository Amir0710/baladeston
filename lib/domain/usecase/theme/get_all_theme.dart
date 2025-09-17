import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class GetAllThemeUseCase {
  final ThemeRepository repository;

  GetAllThemeUseCase({required this.repository});


  Future<List<ThemeEntity>?> call() {
    return repository.getAllThemes();
  }
}
