import 'package:baladeston/domain/auth/failure/auth_failure.dart';

abstract class LoginWithPasswordAttributeFailure
    extends AuthDomainFailure {
  const LoginWithPasswordAttributeFailure();
}

class LoginWithPasswordIdentifyEmptyFailure
    extends LoginWithPasswordAttributeFailure {
  const LoginWithPasswordIdentifyEmptyFailure();
}

class LoginWithPasswordIdentifyFormatFailure
    extends LoginWithPasswordAttributeFailure {
  const LoginWithPasswordIdentifyFormatFailure();
}

class LoginWithPasswordPasswordEmptyFailure
    extends LoginWithPasswordAttributeFailure {
  const LoginWithPasswordPasswordEmptyFailure();
}

class LoginWithPasswordPasswordLengthInvalidFailure
    extends LoginWithPasswordAttributeFailure {
  const LoginWithPasswordPasswordLengthInvalidFailure();
}
