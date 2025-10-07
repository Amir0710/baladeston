import 'package:baladeston/core/di/theme_injection.dart' hide getIt;
import 'package:baladeston/core/di_initialization/init.dart';
import 'package:baladeston/core/init/supabase_initializer.dart';
import 'package:baladeston/presentation/pages/introduction/introduction_first.dart';
import 'package:baladeston/presentation/providers/category_cubit/category_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => getIt<ThemeCubit>()..loadThemeFromSupabase(),
        ),
        BlocProvider<CategoryCubit>(
          create: (_) => getIt<CategoryCubit>(),
        ),
      ],
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
            initial: () => Container(color: Colors.blue),
            orElse: () => Container(color: Colors.red),
            failure: (message) => Container(color: Colors.red),
            loading: () => Container(color: Colors.red),
          );
        },
      ),
    );
  }
}
