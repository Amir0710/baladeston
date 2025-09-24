import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:baladeston/data/datasources/remote/theme_remote_datasource/theme_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ThemeApiImplementation extends ThemeApi {
  final SupabaseClient _client = Supabase.instance.client;

  @override
  Future<List<ThemeModel>?> getAllThemes() async {
    final data = await _client.from('theme').select();
    return (data as List<dynamic>)
        .map((json) => ThemeModel.fromJson(Map<String, dynamic>.from(json)))
        .toList();
  }

  @override
  Future<ThemeModel?> getThemeByName({required String name}) async {
    final data = await _client
        .from('theme')
        .select()
        .eq('name', name)
        .maybeSingle();
    if (data == null) return null;
    return ThemeModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<ThemeModel?> getThemeById({required int id}) async {
    final data = await _client
        .from('theme')
        .select()
        .eq('id', id)
        .maybeSingle();
    if (data == null) return null;
    return ThemeModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<ThemeModel> createTheme({required ThemeModel theme}) async {
    final insertData = theme.toJson()..remove('id');
    final data = await _client
        .from('theme')
        .insert(insertData)
        .select()
        .single();
    return ThemeModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<ThemeModel> updateTheme({required ThemeModel theme}) async {
    if (theme.id == null) {
      throw Exception('Theme id is required for update');
    }
    final data = await _client
        .from('theme')
        .update(theme.toJson())
        .eq('id', theme.id!)
        .select()
        .single();
    return ThemeModel.fromJson(Map<String, dynamic>.from(data));
  }

  @override
  Future<void> deleteThemeById({required int id}) async {
    await _client.from('theme').delete().eq('id', id);
  }

  @override
  Future<void> deleteThemeByName({required String name}) async {
    await _client.from('theme').delete().eq('name', name);
  }

  @override
  Future<int> countAllThemes() async {
    final result = await _client
        .from('theme')
        .select('*')
        .count(CountOption.exact);

    return result.count ?? 0;
  }



}