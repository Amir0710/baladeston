
abstract class LoginWithPasswordAttributeException implements Exception {
  final String message;

  const LoginWithPasswordAttributeException(this.message);

  @override
  String toString() => message;
}


class LoginWithPasswordAttributeIdentifyEmptyException
    extends LoginWithPasswordAttributeException {
  const LoginWithPasswordAttributeIdentifyEmptyException()
      : super('شماره تلفن نمی‌تواند خالی باشد');
}

class LoginWithPasswordAttributeIdentifyFormatException
    extends LoginWithPasswordAttributeException {
  const LoginWithPasswordAttributeIdentifyFormatException()
      : super('فرمت شماره مناسب نیست');
}

