import 'package:baladeston/domain/repositories/theme_repository.dart';

class CountAllThemesUseCase {
  final ThemeRepository repository;

  CountAllThemesUseCase(this.repository);

  Future<int> call() {
    return repository.countAllThemes();
  }
}
