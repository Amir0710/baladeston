import 'package:baladeston/domain/repositories/user_repository.dart';

class LoginUseCase {
  final UserRepository repository;

  LoginUseCase(this.repository);

  Future<void> call({required String phoneNumber,required String password }) {
    return repository.login(phoneNumber: phoneNumber, password: password);
  }
}
