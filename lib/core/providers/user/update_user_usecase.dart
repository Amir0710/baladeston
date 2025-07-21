import 'package:baladeston/domain/entitys/user/user.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class UpdateUserUseCase {
  final UserRepository repository;

  UpdateUserUseCase(this.repository);

  Future<void> call(User user) {
    return repository.updateUser(user: user);
  }
}
