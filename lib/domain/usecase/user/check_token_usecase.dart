import 'package:baladeston/domain/repositories/user_repository.dart';

class CheckTokenUseCase {
  final UserRepository repository;

  CheckTokenUseCase(this.repository);

  Future<bool> call() {
    return repository.checkToken();
  }
}
