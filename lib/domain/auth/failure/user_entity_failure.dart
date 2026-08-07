import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class UserEntityFailure extends AuthDomainFailure {
  const UserEntityFailure();
}

class UserEntityNameEmptyFailure extends UserEntityFailure {
  const UserEntityNameEmptyFailure();
}

class UserEntityPhoneRequiredFailure extends UserEntityFailure {
  const UserEntityPhoneRequiredFailure();
}

class UserEntityPhoneInvalidFailure extends UserEntityFailure {
  const UserEntityPhoneInvalidFailure();
}

class UserEntityEmailInvalidFailure extends UserEntityFailure {
  const UserEntityEmailInvalidFailure();
}

class UserEntityStatusInvalidFailure extends UserEntityFailure {
  const UserEntityStatusInvalidFailure();
}

class UserEntityVerificationRequiredFailure extends UserEntityFailure {
  const UserEntityVerificationRequiredFailure();
}

class UserEntityNoUpdatableFieldsFailure extends UserEntityFailure {
  const UserEntityNoUpdatableFieldsFailure();
}
