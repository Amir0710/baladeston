import 'dart:convert';
import 'package:baladeston/core/extensions/error_extension.dart';
import 'package:baladeston/data/mapper/user_query_filter_mapper.dart';
import 'package:http/http.dart' as http;
import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/models/user/user_model.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/data/datasources/remote/user_remote_datasource/user_api.dart';

class UserApiImplementation extends UserApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/user/$path');

  @override
  Future<UserModel>? getUserById({required int id}) async {
    final response = await http.get(_url(id.toString()));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return UserModel.fromJson(Map<String, dynamic>.from(data));
    } else if (response.statusCode == 404) {
      // return null;
    }
    throw Exception('خطا در دریافت کاربر با شناسه: ${response.statusCode}');
  }

  @override
  Future<List<UserModel>?> getUsersByFilter({
    required UserQueryFilter filter,
  }) async {
    final uri = Uri.parse('$_baseUrl/user').replace(
      queryParameters: filter.toJson(),
    );

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((e) => UserModel.fromJson(Map<String, dynamic>.from(e)))
          .toList();
    }
    throw Exception('خطا در واکشی کاربران: ${response.statusCode}');
  }

  @override
  Future<UserModel> createUser({required UserModel user}) async {
    final body = json.encode(user.toJson()..remove('id'));

    final response = await http.post(
      _url(''),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );
    final data = json.decode(response.body);

    switch (response.statusCode) {
      case 200:
      case 201:
        return UserModel.fromJson(Map<String, dynamic>.from(data));
      case 409:
        throw ConflictException('user_ exists');
      case 401:
        throw UnauthorizedException('invalid_token');
      default:
        throw ServerException('unknown_error');
    }
  }

  @override
  Future<UserModel> updateUser({required UserModel user}) async {
    if (user.id == null) {
      throw Exception('شناسه کاربر برای بروزرسانی لازم است');
    }

    final body = json.encode(user.toJson());

    final response = await http.put(
      _url(user.id!.toString()),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return UserModel.fromJson(Map<String, dynamic>.from(data));
    }
    throw Exception('خطا در بروزرسانی کاربر: ${response.statusCode}');
  }

  @override
  Future<void> deleteUserById({required int id}) async {
    final response = await http.delete(_url(id.toString()));
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('خطا در حذف کاربر با شناسه $id: ${response.statusCode}');
    }
  }

  @override
  Future<void> deleteUserByFilter({
    required UserQueryFilter filter,
  }) async {
    final uri = Uri.parse('$_baseUrl/user').replace(
      queryParameters: filter.toJson(),
    );

    final response = await http.delete(uri);
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('خطا در حذف کاربران با فیلتر: ${response.statusCode}');
    }
  }

  Future<void> down(UserQueryFilter filter) async {
    final uri = Uri.parse('$_baseUrl/user').replace(
      queryParameters: filter.toJson(),
    );

    final response = await http.delete(uri);
    if (response.statusCode != 200 && response.statusCode != 204) {
      throw Exception('خطا در اجرای down برای کاربران: ${response.statusCode}');
    }
  }

  @override
  Future<int> countUser({required UserQueryFilter filter}) async {
    final uri = Uri.parse('$_baseUrl/user/count').replace(
      queryParameters: filter.toCountJson(),
    );

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['count'] ?? 0;
    }
    throw Exception('خطا در شمارش کاربران: ${response.statusCode}');
  }
}
