abstract class ReportIdException implements Exception {
  final String message;

  const ReportIdException(this.message);

  @override
  String toString() => message;
}

class ReportIdNullException extends ReportIdException {
  const ReportIdNullException()
      : super('شناسه گزارش نمی‌تواند خالی باشد');
}

class ReportIdInvalidException extends ReportIdException {
  const ReportIdInvalidException()
      : super('شناسه گزارش معتبر نیست');
}

class ReportIdFormatException extends ReportIdException {
  const ReportIdFormatException()
      : super('فرمت شناسه گزارش نامعتبر است');
}
