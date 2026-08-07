import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/failure/login_with_password_failure.dart';

class LoginWithPasswordUseCaseBusinessRule {
  final UserPasswordEntity attribute;

  const LoginWithPasswordUseCaseBusinessRule({
    required this.attribute,
  });

  Result<void, AuthFailure> validate() {
    return loginAttributeValidation();
  }

  Result<void, AuthFailure> loginAttributeValidation() {
    if (attribute.identifier.trim().isEmpty) {
      return const Result.failure(
        LoginWithPasswordIdentifyEmptyFailure(),
      );
    }

    if (!_isValidIdentifier(attribute.identifier)) {
      return const Result.failure(
        LoginWithPasswordIdentifyFormatFailure(),
      );
    }

    if (attribute.password.trim().isEmpty) {
      return const Result.failure(
        LoginWithPasswordPasswordEmptyFailure(),
      );
    }

    if (attribute.password.length < 6) {
      return const Result.failure(
        LoginWithPasswordPasswordLengthInvalidFailure(),
      );
    }

    return const Result.success(null);
  }

  bool _isValidIdentifier(String identifier) {
    final emailRegex =
    RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');

    final phoneRegex =
    RegExp(r'^\+?[0-9]{10,15}$');

    return emailRegex.hasMatch(identifier) ||
        phoneRegex.hasMatch(identifier);
  }
}
