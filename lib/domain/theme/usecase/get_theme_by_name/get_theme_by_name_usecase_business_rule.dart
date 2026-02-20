import 'package:baladeston/domain/theme/exception/theme_entity_exception.dart';

class GetThemeByNameUseCaseBusinessRule {
  final String name;

  const GetThemeByNameUseCaseBusinessRule({
    required this.name,
  });

  void validate() {


    if (name.trim().isEmpty) {
      throw const ThemeEntityValidationException();
    }
  }
}
