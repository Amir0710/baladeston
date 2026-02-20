abstract class PurchaseIdException implements Exception {
  final String message;

  const PurchaseIdException(this.message);

  @override
  String toString() => message;
}

/// When purchase id is null or not provided
class PurchaseIdNullException extends PurchaseIdException {
  const PurchaseIdNullException()
      : super('شناسه سفارش نمی‌تواند خالی باشد');
}

/// When purchase id is less than or equal to zero
class PurchaseIdInvalidException extends PurchaseIdException {
  const PurchaseIdInvalidException()
      : super('شناسه سفارش معتبر نیست');
}

/// When purchase id format is not acceptable
class PurchaseIdFormatException extends PurchaseIdException {
  const PurchaseIdFormatException()
      : super('فرمت شناسه سفارش نامعتبر است');
}
