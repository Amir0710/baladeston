import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class GetAllThemesUseCase {
  final ThemeRepository repository;

  GetAllThemesUseCase( this.repository);


  Future<List<ThemeEntity>?> call() {
    return repository.getAllThemes();
  }
}
