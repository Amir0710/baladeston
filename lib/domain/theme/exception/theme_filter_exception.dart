abstract class ThemeFilterException implements Exception {
  final String message;

  const ThemeFilterException(this.message);

  @override
  String toString() => message;
}

class ThemeFilterNullException extends ThemeFilterException {
  const ThemeFilterNullException()
      : super('فیلتر تم نمی‌تواند خالی باشد');
}

class ThemeFilterEmptyException extends ThemeFilterException {
  const ThemeFilterEmptyException()
      : super('حداقل یک شرط باید در فیلتر تم مشخص شود');
}

class ThemeFilterValidationException extends ThemeFilterException {
  const ThemeFilterValidationException()
      : super('فیلتر تم نامعتبر است');
}

class ThemeFilterRangeException extends ThemeFilterException {
  const ThemeFilterRangeException()
      : super('مقادیر فیلتر تم خارج از بازه مجاز هستند');
}
