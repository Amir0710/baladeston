import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';

class GetDiscountByIdUsecaseBusinessRule {
  final int id;

  const GetDiscountByIdUsecaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw DiscountEntityIdInvalidException();
    }
  }
}
