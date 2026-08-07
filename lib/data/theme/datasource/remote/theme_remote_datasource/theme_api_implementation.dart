import 'dart:convert';
import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/data/theme/datasource/remote/theme_remote_datasource/theme_api.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/data/theme/model/theme_model.dart';
import 'package:http/http.dart' as http;

class ThemeApiImplementation implements ThemeApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/theme/$path');

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
  // Get all themes
  // ------------------------------------------------------

  @override
  Future<List<ThemeModel>> getAllThemes({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final response = await http.get(
        _url(filter.toQueryString()),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = jsonDecode(response.body);

        return jsonList
            .map(
              (e) => ThemeModel.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
            .toList();
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    } on HttpException catch (e) {
      throw NetworkException(cause: e);
    } on FormatException {
      throw const ServerException();
    }
  }


  // ------------------------------------------------------
  // Get by id
  // ------------------------------------------------------

  @override
  Future<ThemeModel> getThemeById({
    required int id,
  }) async {
    try {
      final response = await http.get(_url(id.toString()));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ThemeModel.fromJson(
          Map<String, dynamic>.from(data),
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Get by name
  // ------------------------------------------------------

  @override
  Future<List<ThemeModel>> getThemeByName({
    required String name,
  }) async {
    try {
      final response = await http.get(_url('name/$name'));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data.map((theme)=> ThemeModel.fromJson(Map<String , dynamic>.from(theme)));
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Create
  // ------------------------------------------------------

  @override
  Future<ThemeModel> createTheme({
    required ThemeModel theme,
  }) async {
    try {
      final body = jsonEncode(theme.toJson()..remove('id'));

      final response = await http.post(
        _url(''),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        return ThemeModel.fromJson(
          Map<String, dynamic>.from(data),
        );
      }

      _handleHttpError(response);
    } on SocketException catch (e) {
      throw NetworkException(cause: e);
    }
  }

  // ------------------------------------------------------
  // Update by id
  // ------------------------------------------------------

  @override
  Future<ThemeModel> updateThemeById({
    required int id,
    required ThemeModel theme,
  }) async {
    try {
      final body = jsonEncode(theme.toJson());

      final response = await http.put(
        _url(id.toString()),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return ThemeModel.fromJson(
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
  Future<List<ThemeModel>> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeModel theme,
  }) async {
    try {
      final body = jsonEncode(theme.toJson());

      final response = await http.put(
        _url(filter.toQueryString()),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data.map((theme)=> ThemeModel.fromJson(Map<String,dynamic>.from(theme)));
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
  Future<int> deleteThemeById({
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
  // Delete by name
  // ------------------------------------------------------

  @override
  Future<List<int>> deleteThemeByFilter({
    required ThemeQueryFilter filter,
  }) async {
    try {
      final response = await http.delete(_url('filter/$filter'));

      if (response.statusCode == 200 || response.statusCode == 204) {
        return response.statusCode == 200
            ? jsonDecode(response.body)['id']
            : 0;
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
  Future<int> countAllThemes({
    required ThemeQueryFilter filter,
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
