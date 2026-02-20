import 'package:baladeston/domain/user/exception/user_id_exception.dart';

class GetUserByIdUseCaseBusinessRule {
  final int id;

  const GetUserByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }

  void _validateId() {
    if (id <= 0) {
      throw const UserIdInvalidException();
    }
  }
}
