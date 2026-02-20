abstract class ReportEntityException implements Exception {
  final String message;

  const ReportEntityException(this.message);

  @override
  String toString() => message;
}

class ReportEntityNullException extends ReportEntityException {
  const ReportEntityNullException()
      : super('اطلاعات گزارش نمی‌تواند خالی باشد');
}

class ReportRequiredFieldException extends ReportEntityException {
  const ReportRequiredFieldException()
      : super('برخی از فیلدهای اجباری گزارش مقداردهی نشده‌اند');
}

class ReportEntityValidationException extends ReportEntityException {
  const ReportEntityValidationException()
      : super('اطلاعات گزارش با قوانین تجاری سیستم مطابقت ندارد');
}

class ReportEntityInvalidStateException extends ReportEntityException {
  const ReportEntityInvalidStateException()
      : super('وضعیت فعلی گزارش معتبر نیست');
}
