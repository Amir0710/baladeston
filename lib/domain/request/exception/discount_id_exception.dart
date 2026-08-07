abstract class DiscountIdException implements Exception {
  final String message;

  const DiscountIdException({required this.message});

  @override
  String toString() => message;
}


class DiscountIdRequiredException extends DiscountIdException {
  const DiscountIdRequiredException()
      : super(message: 'Discount id is required');
}

class DiscountIdInvalidException extends DiscountIdException {
  const DiscountIdInvalidException()
      : super(message: 'Discount id must be greater than 0');
}
