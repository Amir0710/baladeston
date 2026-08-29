import 'package:baladeston/core/di_initialization/init.dart';
import 'package:baladeston/presentation/mapper/theme/theme_entity_to_theme_data.dart';
import 'package:baladeston/presentation/pages/introduction/introduction_first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/providers/category_cubit/category_cubit.dart';
import 'application/providers/theme_cubit/theme_cubit.dart';
import 'application/providers/theme_cubit/theme_state.dart';
import 'application/providers/user_cubit/user_cubit.dart';
import 'core/di/auth_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();
  final themeCubit = getIt<ThemeCubit>();

  themeCubit.initTheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (_) => getIt<ThemeCubit>(),
        ),
        BlocProvider<CategoryCubit>(
          create: (_) => getIt<CategoryCubit>(),
        ),
        BlocProvider<UserCubit>(
          create: (_) => getIt<UserCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return state.maybeWhen(
            initializedTheme: (theme) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: "Baladeston",
                  theme: theme.toThemeData(),
                  home: IntroductionFirst());
            },
            initial: () => Container(color: Colors.blue),
            initializingTheme: () => Container(color: Colors.red),
            orElse: () => Container(color: Colors.red),
          );
        },
      ),
    );
  }
}
