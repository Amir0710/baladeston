import 'package:baladeston/domain/entitys/user/user.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class GetCurrentUserUseCase {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  Future<User> call() {
    return repository.getCurrentUser();
  }
}
