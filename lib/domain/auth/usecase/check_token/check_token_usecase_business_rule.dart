import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';

class CheckTokenBusinessRule {
  const CheckTokenBusinessRule();

  Result<void, AuthFailure> validate() {
    return const Result.success(null);
  }
}
