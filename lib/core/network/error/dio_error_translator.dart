import 'package:dio/dio.dart';

class NetworkErrorData {
  final String? code;
  final int? statusCode;

  const NetworkErrorData({this.code, this.statusCode});
}

class DioErrorTranslator {
  static NetworkErrorData translate(DioException error) {
    if (error.response != null) {
      final data = error.response?.data;

      if (data is Map && data.containsKey('code')) {
        return NetworkErrorData(
          code: data['code']?.toString(),
          statusCode: error.response?.statusCode,
        );
      }

      return NetworkErrorData(statusCode: error.response?.statusCode);
    }

    final infrastructureCode = _mapDioTypeToYourMapperCode(error.type);

    return NetworkErrorData(code: infrastructureCode);
  }

  static String _mapDioTypeToYourMapperCode(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "TIMEOUT";

      case DioExceptionType.connectionError:
      case DioExceptionType.badCertificate:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        return "NETWORK_ERROR";

      default:
        return "NETWORK_ERROR";
    }
  }
}
