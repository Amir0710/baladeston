import 'package:baladeston/core/init/supabase_initializer.dart';
import 'package:baladeston/presentation/pages/spalsh_page/splash_page.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_cubit.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSupabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (themeData, isDark) {
              return MaterialApp(
                title: "baladeston",
                theme: themeData,
                home:  Splash(),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
