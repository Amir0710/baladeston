import 'dart:convert';
import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/data/user/datasource/remote/user_remote_datasource/user_api.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/data/user/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserApiImplementation implements UserApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/user/$path');

  // ------------------------------------------------------
  // Helpers
  // ------------------------------------------------------

  Never _handleHttpError(http.Response response) {
    switch (response.statusCode) {
      case 401:
        throw const UnauthorizedException();
      case 403:
        throw const ForbiddenException();
      case 404:
        throw const NotFoundException();
      case 422:
        final data = jsonDecode(response.body);
        throw RemoteValidationException(
          data['message'] ?? 'Validation error',
        );
      case 500:
      default:
        throw const ServerException();
    }
  }

  // ------------------------------------------------------
  // Get by id
  // ------------------------------------------------------

  @override
  Future<UserModel> getUserById({
    required int id,
  }) async {
    try {
      final response = await http.get(_url(id.toString()));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserModel.fromJson(
          Map<String, dynamic>.from(data),
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Get by filter
  // ------------------------------------------------------

  @override
  Future<List<UserModel>> getUserByFilter({
    required UserQueryFilter filter,
  }) async {
    try {
      final response = await http.get(
        _url(filter.toQueryString()),
      );

      if (response.statusCode == 200) {
        final List<dynamic> list = jsonDecode(response.body);
        return list
            .map(
              (e) => UserModel.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
            .toList();
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    } on FormatException {
      throw const ServerException();
    }
  }

  // ------------------------------------------------------
  // Update by id
  // ------------------------------------------------------

  @override
  Future<UserModel> updateUserById({
    required int id,
    required UserModel user,
  }) async {
    try {
      final body = jsonEncode(user.toJson());

      final response = await http.put(
        _url(id.toString()),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserModel.fromJson(
          Map<String, dynamic>.from(data),
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Update by filter
  // ------------------------------------------------------

  @override
  Future<UserModel> updateUserByFilter({
    required UserQueryFilter filter,
    required UserModel user,
  }) async {
    try {
      final body = jsonEncode(user.toJson());

      final response = await http.put(
        _url(filter.toQueryString()),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return UserModel.fromJson(
          Map<String, dynamic>.from(data),
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Delete by id
  // ------------------------------------------------------

  @override
  Future<int> deleteUserById({
    required int id,
  }) async {
    try {
      final response = await http.delete(_url(id.toString()));

      if (response.statusCode == 200 || response.statusCode == 204) {
        return id;
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Delete by filter
  // ------------------------------------------------------

  @override
  Future<List<int>> deleteUserByFilter({
    required UserQueryFilter filter,
  }) async {
    try {
      final response = await http.delete(
        _url(filter.toQueryString()),
      );

      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body);
        return data.cast<int>();
      }

      if (response.statusCode == 204) {
        return const [];
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Count
  // ------------------------------------------------------

  @override
  Future<int> countUser({
    required UserQueryFilter filter,
  }) async {
    try {
      final response = await http.get(
        _url('count${filter.toQueryString()}'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['count'] as int? ?? 0;
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }
}
