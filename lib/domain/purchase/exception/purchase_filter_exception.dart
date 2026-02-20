abstract class PurchaseFilterException implements Exception {
  final String message;

  const PurchaseFilterException(this.message);

  @override
  String toString() => message;
}

/// When filter object is null
class PurchaseFilterNullException extends PurchaseFilterException {
  const PurchaseFilterNullException()
      : super('فیلتر سفارش نمی‌تواند خالی باشد');
}

/// When filter fields combination is invalid
class PurchaseFilterValidationException extends PurchaseFilterException {
  const PurchaseFilterValidationException()
      : super('فیلتر سفارش نامعتبر است');
}

/// When filter does not contain any condition
class PurchaseFilterEmptyException extends PurchaseFilterException {
  const PurchaseFilterEmptyException()
      : super('حداقل یک شرط باید در فیلتر سفارش مشخص شود');
}

/// When filter values are out of allowed range
class PurchaseFilterRangeException extends PurchaseFilterException {
  const PurchaseFilterRangeException()
      : super('مقادیر فیلتر سفارش خارج از بازه مجاز هستند');
}
