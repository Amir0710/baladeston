import 'dart:convert';
import 'package:baladeston/data/datasources/remote/theme_remote_datasource/theme_api.dart';
import 'package:http/http.dart' as http;
import 'package:baladeston/data/models/theme/theme_model.dart';
import 'package:baladeston/config/app_config.dart';

class ThemeApiImplementation extends ThemeApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/theme/$path');

  /// گرفتن همه‌ی تم‌ها
  @override
  Future<List<ThemeModel>?> getAllThemes() async {
    final response = await http.get(_url(''));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList
          .map((e) => ThemeModel.fromJson(Map<String, dynamic>.from(e)))
          .toList();
    }
    throw Exception('خطا در واکشی تم‌ها: ${response.statusCode}');
  }

  /// دریافت تم بر اساس name
  @override
  Future<ThemeModel?> getThemeByName({required String name}) async {
    final response = await http.get(_url('name/$name'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ThemeModel.fromJson(Map<String, dynamic>.from(data));
    } else if (response.statusCode == 404) {
      return null;
    }
    throw Exception('خطا در دریافت تم بر اساس نام: ${response.statusCode}');
  }

  /// دریافت تم بر اساس شناسه (CUID)
  @override
  Future<ThemeModel?> getThemeById({required int id}) async {
    final response = await http.get(_url(id.toString()));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ThemeModel.fromJson(Map<String, dynamic>.from(data));
    } else if (response.statusCode == 404) {
      return null;
    }
    throw Exception('خطا در دریافت تم بر اساس شناسه: ${response.statusCode}');
  }

  /// ساخت تم جدید
  @override
  Future<ThemeModel> createTheme({required ThemeModel theme}) async {
    final body = json.encode(theme.toJson()..remove('id'));

    final response = await http.post(
      _url(''),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = json.decode(response.body);
      return ThemeModel.fromJson(Map<String, dynamic>.from(data));
    }
    throw Exception(
        'خطا در ایجاد تم جدید: ${response.statusCode} → ${response.body}');
  }

  /// بروزرسانی تم
  @override
  Future<ThemeModel> updateTheme({required ThemeModel theme}) async {
    if (theme.id == null) {
      throw Exception('شناسه تم برای بروزرسانی لازم است');
    }

    final body = json.encode(theme.toJson());

    final response = await http.put(
      _url(theme.id!.toString()), // id رشته‌ای
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return ThemeModel.fromJson(Map<String, dynamic>.from(data));
    }
    throw Exception('خطا در بروزرسانی تم: ${response.statusCode}');
  }

  /// حذف تم بر اساس شناسه (CUID)
  @override
  Future<void> deleteThemeById({required int id}) async {
    final response = await http.delete(_url(id.toString()));
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('خطا در حذف تم با شناسه $id: ${response.statusCode}');
    }
  }

  /// حذف تم بر اساس name
  @override
  Future<void> deleteThemeByName({required String name}) async {
    final response = await http.delete(_url('name/$name'));
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception(
          'خطا در حذف تم بر اساس نام $name: ${response.statusCode}');
    }
  }

  /// شمارش کل تم‌ها
  @override
  Future<int> countAllThemes() async {
    final response = await http.get(_url('count'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['count'] ?? 0;
    }
    throw Exception('خطا در شمارش تم‌ها: ${response.statusCode}');
  }
}
