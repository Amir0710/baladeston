import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class PhoneFailure extends AuthDomainFailure {
  const PhoneFailure();
}

class PhoneEmptyFailure extends PhoneFailure {
  const PhoneEmptyFailure();
}

class PhoneFormatFailure extends PhoneFailure {
  const PhoneFormatFailure();
}
