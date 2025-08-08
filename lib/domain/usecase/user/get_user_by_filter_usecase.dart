import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class GetCurrentUserUseCase {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  Future<UserEntity> call({required int id}) {
    return repository.getUserById(id: id);
  }
}
