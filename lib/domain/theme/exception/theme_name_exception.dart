abstract class ThemeNameException implements Exception {
  final String message;

  const ThemeNameException(this.message);

  @override
  String toString() => message;
}

class ThemeNameNullException extends ThemeNameException {
  const ThemeNameNullException()
      : super('شناسه تم نمی‌تواند خالی باشد');
}

class ThemeNameInvalidException extends ThemeNameException {
  const ThemeNameInvalidException()
      : super('شناسه تم معتبر نیست');
}

class ThemeNameFormatException extends ThemeNameException {
  const ThemeNameFormatException()
      : super('فرمت شناسه تم نامعتبر است');
}
