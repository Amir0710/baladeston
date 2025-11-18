import 'package:baladeston/domain/repositories/user_repository.dart';

class CheckUserExistsUsecase {
  final UserRepository repository;

  CheckUserExistsUsecase(this.repository);

  Future<bool> call({required String phoneNumber}) {
    return repository.checkUserExists(phoneNumber : phoneNumber);
  }
}
