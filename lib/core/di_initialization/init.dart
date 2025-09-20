import 'package:baladeston/core/di/category_injection.dart';
import 'package:baladeston/core/di/theme_injection.dart';

Future<void> initDependencies() async {
  await initThemeModule();
  await initCategoryModule();
}
