import 'package:baladeston/domain/repositories/user_repository.dart';

class ChangePasswordUseCase {
  final UserRepository repository;

  ChangePasswordUseCase(this.repository);

  Future<void> call(String newPassword) {
    return repository.changePassword(newPassword: newPassword);
  }
}
