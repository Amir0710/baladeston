import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class GetThemeByIdUseCase {
  final ThemeRepository repository;

  GetThemeByIdUseCase( this.repository);

  Future<ThemeEntity?> call ({required int id}) {
    return repository.getThemeById(id: id);
  }
}