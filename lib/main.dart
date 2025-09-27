import 'package:baladeston/core/di/theme_injection.dart';
import 'package:baladeston/core/di_initialization/init.dart';
import 'package:baladeston/core/init/supabase_initializer.dart';
import 'package:baladeston/presentation/pages/introduction/introduction_first.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_cubit.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSupabase();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ThemeCubit>()..loadThemeFromSupabase(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (themeData, isDark) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: "baladeston",
                theme: themeData,
                home: IntroductionFirst(),
              );
            },
            initial: () => Container(
              color: Colors.blue,
            ),
            orElse: () => Container(
              color: Colors.red,
            ),
            failure: (massage) => Container(
              color: Colors.red,
            ),
            loading: () => Container(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
