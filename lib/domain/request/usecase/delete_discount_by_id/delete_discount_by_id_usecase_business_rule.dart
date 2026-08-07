import 'package:baladeston/domain/discount/exception/discount_entity_exception.dart';

class DeleteDiscountByIdUsecaseBusinessRule {
  final int id;

  const DeleteDiscountByIdUsecaseBusinessRule({
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
