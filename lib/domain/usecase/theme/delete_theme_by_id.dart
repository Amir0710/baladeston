import 'package:baladeston/domain/repositories/theme_repository.dart';

class DeleteThemeByIdUseCase {
  final ThemeRepository repository;

  DeleteThemeByIdUseCase({required this.repository});


  Future<void> call ({required int id}) {
    return repository.deleteThemeById(id: id);
  }
}