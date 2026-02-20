import 'package:baladeston/data/theme/model/theme_model.dart';

abstract class ThemeLocal {
  Future<void> saveThemeModel({
    required ThemeModel theme,
  });


  Future<ThemeModel> loadTheme();
}
