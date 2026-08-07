import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/failure/phone_failure.dart';

class CheckUserExistsUseCaseBusinessRule {
  final String phone;

  const CheckUserExistsUseCaseBusinessRule({
    required this.phone,
  });

  Result<void, AuthDomainFailure> validate() {
    return _validatePhone();
  }

  Result<void, AuthDomainFailure> _validatePhone() {
    if (phone.isEmpty) {
      return const Result.failure(PhoneEmptyFailure());
    }

    final phoneRegex = RegExp(r'^09\d{9}$');
    if (!phoneRegex.hasMatch(phone)) {
      return const Result.failure(PhoneFormatFailure());
    }

    return const Result.success(null);
  }
}
