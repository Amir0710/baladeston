import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class UpdateUserUseCase {
  final UserRepository repository;

  UpdateUserUseCase(this.repository);

  Future<void> call(UserEntity user) {
    return repository.updateUser(user: user);
  }
}
