abstract class PhoneException implements Exception {
  final String message;

  const PhoneException(this.message);

  @override
  String toString() => message;
}

class PhoneFormatException extends PhoneException {
  const PhoneFormatException() : super('فرمت شماره مناسب نیست');
}
