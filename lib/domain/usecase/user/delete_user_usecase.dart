import 'package:baladeston/domain/repositories/user_repository.dart';

class DeleteUserUseCase {
  final UserRepository repository;

  DeleteUserUseCase(this.repository);

  Future<void> call() {
    return repository.deleteUser();
  }
}
