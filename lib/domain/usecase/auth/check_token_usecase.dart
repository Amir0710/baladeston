import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/repositories/auth_repository.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class CheckTokenUseCase {
  final AuthRepository repository;
  CheckTokenUseCase(this.repository);
  Future<Result<bool>> call() {
    return repository.checkToken();
  }
}
