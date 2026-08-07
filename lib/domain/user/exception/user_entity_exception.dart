
abstract class UserEntityFailure extends AuthDomainFailure {
  const UserEntityFailure();
}

/// ------------------------------------------------------
/// Required field validations
/// ------------------------------------------------------

class UserEntityNameEmptyFailure extends UserEntityFailure {
  const UserEntityNameEmptyFailure();
}

class UserEntityPhoneRequiredFailure extends UserEntityFailure {
  const UserEntityPhoneRequiredFailure();
}

/// ------------------------------------------------------
/// Value & format validations
/// ------------------------------------------------------

class UserEntityPhoneInvalidFailure extends UserEntityFailure {
  const UserEntityPhoneInvalidFailure();
}

class UserEntityEmailInvalidFailure extends UserEntityFailure {
  const UserEntityEmailInvalidFailure();
}

class UserEntityStatusInvalidFailure extends UserEntityFailure {
  const UserEntityStatusInvalidFailure();
}

/// ------------------------------------------------------
/// Security & business constraints
/// ------------------------------------------------------

class UserEntityVerificationRequiredFailure extends UserEntityFailure {
  const UserEntityVerificationRequiredFailure();
}

/// ------------------------------------------------------
/// Update / Partial update specific
/// ------------------------------------------------------

class UserEntityNoUpdatableFieldsFailure extends UserEntityFailure {
  const UserEntityNoUpdatableFieldsFailure();
}
