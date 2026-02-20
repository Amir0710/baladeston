import 'package:baladeston/domain/theme/exception/theme_id_exception.dart';

class GetThemeByIdUseCaseBusinessRule {
  final int id;

  const GetThemeByIdUseCaseBusinessRule({
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
