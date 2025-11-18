import 'package:baladeston/domain/repositories/user_repository.dart';

class LoginUseCase {
  final UserRepository repository;

  LoginUseCase(this.repository);

  Future<void> call({required int userId,required String password }) {
    return repository.login(userId: userId, password: password);
  }
}
