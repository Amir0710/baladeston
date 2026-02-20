import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';

class SetThemeUseCaseBusinessRule {
  final int id;

  const SetThemeUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw const ThemeIdInvalidException();
    }
  }
}
