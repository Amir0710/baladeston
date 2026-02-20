import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';

class CheckTokenUseCase{
  final AuthRepository repository ;

  CheckTokenUseCase({required this.repository});
  Future<Result<bool, AuthFailure>> call ({required VerificationEntity verification}){
    return repository.checkToken();
  }

}