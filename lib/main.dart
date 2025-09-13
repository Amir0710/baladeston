import 'package:baladeston/core/init/supabase_initializer.dart';
import 'package:baladeston/presentation/pages/introduction/introduction_first.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_cubit.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/add_padding.dart';


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
                home:  IntroductionFirst(),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
