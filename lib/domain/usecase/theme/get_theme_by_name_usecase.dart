import 'package:baladeston/domain/entitys/theme/theme_entity.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart';

class GetThemeByNameUseCase {
  final ThemeRepository repository;

  GetThemeByNameUseCase( this.repository);
  Future<ThemeEntity?> call ({required String name}) {
    return repository.getThemeByName(name: name);
  }
}