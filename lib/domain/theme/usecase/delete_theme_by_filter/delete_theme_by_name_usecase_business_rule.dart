import 'package:baladeston/domain/theme/exception/theme_name_exception.dart';

class DeleteThemeByNameUseCaseBusinessRule {
  final String name;

  const DeleteThemeByNameUseCaseBusinessRule({
    required this.name,
  });

  void validate() {
    _validateName();
  }

  void _validateName() {
    if (name == 'null') {
      throw const ThemeNameFormatException();
    }
  }
}
