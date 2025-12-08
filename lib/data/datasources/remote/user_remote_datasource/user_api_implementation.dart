import 'dart:convert';
import 'package:baladeston/core/extensions/error_extension.dart';
import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/storage.dart';
import 'package:baladeston/data/models/user/user_model.dart';
import 'package:baladeston/data/models/verification/verification_model.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/data/mapper/query_filter/user_query_filter_mapper.dart';
import 'package:baladeston/data/datasources/remote/user_remote_datasource/user_api.dart';
import 'package:http/http.dart' as http;
import 'package:baladeston/core/network/auth_client.dart';

class UserApiImplementation implements UserApi {
  final String _baseUrl = AppConfig.apiBaseUrl;
  final TokenStorage _tokenStorage = TokenStorage();
  late final http.Client _client;

  UserApiImplementation() {
    _client = AuthClient(tokenStorage: _tokenStorage);
  }

  Uri _url(String path) => Uri.parse('$_baseUrl/user/$path');

  @override
  Future<void> login({required int userId, required String password }) async {
    final uri = Uri.parse('$_baseUrl/auth/login');
    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'user_id': userId, 'password': password}),
    );

    final data = json.decode(response.body);

    switch (response.statusCode) {
      case 200:
      case 201:
        final token = data['access_token'];
        if (token != null) {
          await _tokenStorage.saveToken(token);
        } else {
          throw Exception('توکن در پاسخ سرور وجود ندارد');
        }
        break;
      case 404:
        throw NotFoundException('کاربر یافت نشد');
      case 401:
        throw UnauthorizedException('اعتبارسنجی اشتباه');
      default:
        throw ServerException('خطای نامشخص در ورود: ${response.statusCode}');
    }
  }

  @override
  Future<UserModel>? getUserById({required int id}) async {
    final response = await _client.get(_url(id.toString()));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return UserModel.fromJson(Map<String, dynamic>.from(data));
    } else if (response.statusCode == 404) {
      throw NotFoundException('کاربر یافت نشد');
    } else if (response.statusCode == 401) {
      throw UnauthorizedException('توکن نامعتبر است');
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

    final response = await _client.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data
          .map((e) => UserModel.fromJson(Map<String, dynamic>.from(e)))
          .toList();
    } else if (response.statusCode == 401) {
      throw UnauthorizedException('نیاز به ورود مجدد دارید');
    }
    throw Exception('خطا در واکشی کاربران: ${response.statusCode}');
  }

  @override
  Future<UserModel> createUser({required UserModel user}) async {
    final body = json.encode(user.toJson()
      ..remove('id'));

    final response = await _client.post(
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
        throw ConflictException('کاربر تکراری است');
      case 401:
        throw UnauthorizedException('توکن نامعتبر');
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

    final response = await _client.put(
      _url(user.id!.toString()),
      headers: {'Content-Type': 'application/json'},
      body: body,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return UserModel.fromJson(Map<String, dynamic>.from(data));
    } else if (response.statusCode == 401) {
      throw UnauthorizedException('توکن نامعتبر');
    }

    throw Exception('خطا در بروزرسانی کاربر: ${response.statusCode}');
  }

  @override
  Future<void> deleteUserById({required int id}) async {
    final response = await _client.delete(_url(id.toString()));
    if (response.statusCode == 200 || response.statusCode == 204) return;
    if (response.statusCode == 401) {
      throw UnauthorizedException('توکن معتبر نیست');
    }
    throw Exception('خطا در حذف کاربر با شناسه $id: ${response.statusCode}');
  }

  @override
  Future<void> deleteUserByFilter({
    required UserQueryFilter filter,
  }) async {
    final uri = Uri.parse('$_baseUrl/user').replace(
      queryParameters: filter.toJson(),
    );

    final response = await _client.delete(uri);
    if (response.statusCode == 200 || response.statusCode == 204) return;
    throw Exception('خطا در حذف کاربران با فیلتر: ${response.statusCode}');
  }

  // ⬛ Down (maybe remove or deactivate users)
  Future<void> down(UserQueryFilter filter) async {
    final uri = Uri.parse('$_baseUrl/user').replace(
      queryParameters: filter.toJson(),
    );

    final response = await _client.delete(uri);
    if (response.statusCode == 200 || response.statusCode == 204) return;
    throw Exception('خطا در اجرای down برای کاربران: ${response.statusCode}');
  }

  @override
  Future<int> countUser({required UserQueryFilter filter}) async {
    final uri = Uri.parse('$_baseUrl/user/count').replace(
      queryParameters: filter.toCountJson(),
    );

    final response = await _client.get(uri);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['count'] ?? 0;
    }
    throw Exception('خطا در شمارش کاربران: ${response.statusCode}');
  }

  @override
  Future<bool> checkToken() async {
    final uri = Uri.parse('$_baseUrl/auth/verify');

    try {
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 401) {
        return false;
      } else {
        throw ServerException(
            'خطای غیرمنتظره در بررسی توکن: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('خطا در بررسی اعتبار توکن: $e');
    }
  }

  @override
  Future<bool> checkUserExists({required String phoneNumber}) async {
    try {
      final uri = Uri.parse('$_baseUrl/user/check-exists')
          .replace(queryParameters: {
        'phone_number': phoneNumber,
      });

      final response = await http.get(uri);

      if (response.statusCode != 200) {
        throw Exception('Failed to check user exists: ${response.statusCode}');
      }

      final data = jsonDecode(response.body);

      // انتظار داریم API این را برگرداند: {"exists": true/false}
      if (data is Map && data.containsKey('exists')) {
        return data['exists'] == true;
      } else {
        throw Exception('Invalid response format: $data');
      }
    } catch (e) {
      throw Exception('checkUserExists error: $e');
    }
  }

  @override
  Future<VerificationModel> sendOtp({required String phoneNumber}) {
    // TODO: implement sendOtp
    throw UnimplementedError();
  }
}