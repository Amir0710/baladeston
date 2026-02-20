import 'package:baladeston/domain/user/exception/user_id_exception.dart';

class DeleteUserByIdUseCaseBusinessRule {
  final int id;

  const DeleteUserByIdUseCaseBusinessRule({
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
