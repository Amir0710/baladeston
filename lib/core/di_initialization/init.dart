import 'package:baladeston/core/di/category_injection.dart';
import 'package:baladeston/core/di/theme_injection.dart';
import 'package:baladeston/core/di/user_injection.dart';
import 'package:baladeston/core/di/verification_injection.dart';

Future<void> initDependencies() async {
  // print('!!!!!!!');
  await initThemeModule();
  await initCategoryModule();
  await initVerificationModule();
  await initUserModule();

}
