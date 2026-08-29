import 'package:dio/dio.dart';

class NetworkErrorData {
  final String? code;
  final int? statusCode;

  const NetworkErrorData({this.code, this.statusCode});
}

class DioErrorTranslator {
  static NetworkErrorData translate(DioException error) {
    if (error.response != null) {
      return _translateFromResponse(error.response!);
    }

    final infrastructureCode = _mapDioTypeToYourMapperCode(error.type);
    return NetworkErrorData(code: infrastructureCode);
  }

  static NetworkErrorData _translateFromResponse(Response response) {
    final data = response.data;

    if (data is Map && data.containsKey('code')) {
      return NetworkErrorData(
        code: data['code']?.toString(),
        statusCode: response.statusCode,
      );
    }

    return NetworkErrorData(statusCode: response.statusCode);
  }

  static String _mapDioTypeToYourMapperCode(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return "TIMEOUT";

      case DioExceptionType.badResponse:
        return "SERVER_ERROR";

      case DioExceptionType.connectionError:
      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        return "NETWORK_ERROR";
    }
  }

}
