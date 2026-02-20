  abstract class DataException implements Exception {
  final String message;
  final int? statusCode;
  final Object? cause;

  const DataException({
    required this.message,
    this.statusCode,
    this.cause,
  });

  @override
  String toString() => message;
}
