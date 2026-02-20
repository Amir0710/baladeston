abstract class ReportFilterException implements Exception {
  final String message;

  const ReportFilterException(this.message);

  @override
  String toString() => message;
}

class ReportFilterNullException extends ReportFilterException {
  const ReportFilterNullException()
      : super('فیلتر گزارش نمی‌تواند خالی باشد');
}

class ReportFilterEmptyException extends ReportFilterException {
  const ReportFilterEmptyException()
      : super('حداقل یک شرط باید در فیلتر گزارش مشخص شود');
}

class ReportFilterValidationException extends ReportFilterException {
  const ReportFilterValidationException()
      : super('فیلتر گزارش نامعتبر است');
}

class ReportFilterRangeException extends ReportFilterException {
  const ReportFilterRangeException()
      : super('مقادیر فیلتر گزارش خارج از بازه مجاز هستند');
}
