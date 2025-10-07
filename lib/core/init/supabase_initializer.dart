import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final getIt = GetIt.instance;

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: 'https://fprgvfftlwthcscutmlo.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZwcmd2ZmZ0bHd0aGNzY3V0bWxvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTEyNjkwOTYsImV4cCI6MjA2Njg0NTA5Nn0.4C68c68NAa3GIRGvhI2Kwdc_QW5oyw1Wi-UDY_jZX8s',
  );

  // 🔹 این خط باعث میشه SupabaseClient در GetIt رجیستر بشه
  if (!getIt.isRegistered<SupabaseClient>()) {
    getIt.registerLazySingleton<SupabaseClient>(
          () => Supabase.instance.client,
    );
  }
}
