import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/datasources/remote/auth_remote_datasource/auth_api.dart';
import 'package:baladeston/domain/repositories/auth_repository.dart';

class AuthRepositoryImplementation extends AuthRepository{
  final AuthApi  _api ;
  AuthRepositoryImplementation({required AuthApi api}): _api = api ;
  @override
  Future<Result<bool>> checkToken() async {
    try{
      final result = await _api.checkToken() ;
      return Result.success(result) ; 
    }
    catch(e){
      throw Result.failure('خطا در ارسال مجدد کد تأیید: $e');
    }
  }

}