import 'package:baladeston/domain/repositories/user_repository.dart';

class DeleteUserByIdUseCase {
  final UserRepository repository;

  DeleteUserByIdUseCase(this.repository);

  Future<void> call({required int id}) {
    return repository.deleteUserById(id: id);
  }
}
