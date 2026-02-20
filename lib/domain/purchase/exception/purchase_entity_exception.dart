abstract class PurchaseEntityException implements Exception {
  final String message;

  const PurchaseEntityException(this.message);

  @override
  String toString() => message;
}

/// When purchase entity itself is null
class PurchaseEntityNullException extends PurchaseEntityException {
  const PurchaseEntityNullException()
      : super('اطلاعات سفارش نمی‌تواند خالی باشد');
}

/// When required fields are missing
class PurchaseRequiredFieldException extends PurchaseEntityException {
  const PurchaseRequiredFieldException()
      : super('برخی از فیلدهای اجباری سفارش مقداردهی نشده‌اند');
}

/// When purchase entity violates business rules
class PurchaseEntityValidationException extends PurchaseEntityException {
  const PurchaseEntityValidationException()
      : super('اطلاعات سفارش با قوانین تجاری سیستم مطابقت ندارد');
}

/// When purchase status is not allowed for operation
class PurchaseEntityInvalidStateException extends PurchaseEntityException {
  const PurchaseEntityInvalidStateException()
      : super('وضعیت فعلی سفارش اجازه انجام این عملیات را نمی‌دهد');
}
