import 'package:baladeston/domain/repositories/user_repository.dart';

class CheckUserExistsUseCase {
  final UserRepository repository;

  CheckUserExistsUseCase(this.repository);

  Future<bool> call({required String phoneNumber}) {
    return repository.checkUserExists(phoneNumber : phoneNumber);
  }
}
