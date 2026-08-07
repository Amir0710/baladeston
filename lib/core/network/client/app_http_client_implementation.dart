import 'dart:io';
import 'package:baladeston/core/network/client/app_http_client.dart';
import 'package:dio/dio.dart';

class AppHttpClientImpl implements AppHttpClient {
  final Dio _dio;

  AppHttpClientImpl(this._dio);

  @override
  Future<dynamic> get(Uri uri) async {
    final response = await _dio.getUri(uri);
    return response.data;
  }

  @override
  Future<dynamic> post(Uri uri, {Map<String, dynamic>? body}) async {
    final response = await _dio.postUri(uri, data: body);
    return response.data;
  }

  @override
  Future<dynamic> put(Uri uri, {Map<String, dynamic>? body}) async {
    final response = await _dio.putUri(uri, data: body);
    return response.data;
  }

  @override
  Future<dynamic> delete(Uri uri) async {
    final response = await _dio.deleteUri(uri);
    return response.data;
  }

  @override
  Future<dynamic> upload(Uri uri, {required File file, required String field}) async {
    final formData = FormData.fromMap({
      field: await MultipartFile.fromFile(file.path),
    });
    final response = await _dio.postUri(uri, data: formData);
    return response.data;
  }
}
