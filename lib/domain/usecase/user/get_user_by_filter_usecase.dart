import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class GetUsersByFilterUseCase {
  final UserRepository repository;

  GetUsersByFilterUseCase(this.repository);

  Future<UserEntity>? call({required int id}) {
    return repository.getUserById(id: id);
  }
}
