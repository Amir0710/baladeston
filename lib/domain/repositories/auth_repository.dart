import 'package:baladeston/core/result/result.dart';

abstract class AuthRepository {
  Future<Result<bool>> checkToken();
}
