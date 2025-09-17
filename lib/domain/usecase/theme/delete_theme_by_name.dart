import 'package:baladeston/domain/repositories/theme_repository.dart';

class DeleteThemeByNameUseCase {
  final ThemeRepository repository;

  DeleteThemeByNameUseCase({required this.repository});



  Future<void> call ({required String name}) {
    return repository.deleteThemeByName(name : name);
  }
}