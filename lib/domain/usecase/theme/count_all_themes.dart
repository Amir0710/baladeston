import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class CountAllThemeSUseCase {
  final ThemeRepository repository;

  CountAllThemeSUseCase({required this.repository});


  Future<int> call() {
    return repository.countAllThemes();
  }
}
