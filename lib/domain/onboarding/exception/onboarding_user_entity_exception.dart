abstract class OnboardingUserEntityException implements Exception {
  final String message;

  const OnboardingUserEntityException(this.message);

  @override
  String toString() => message;
}

class UserFullNameEmptyException extends OnboardingUserEntityException {
  const UserFullNameEmptyException()
      : super('نام کاربر نمی‌تواند خالی باشد');
}

class UserEmailInvalidException extends OnboardingUserEntityException {
  const UserEmailInvalidException()
      : super('ایمیل کاربر نامعتبر است');
}

class UserGenderRequiredException extends OnboardingUserEntityException {
  const UserGenderRequiredException()
      : super('جنسیت کاربر باید مشخص شود');
}

class UserBirthDayInvalidException extends OnboardingUserEntityException {
  const UserBirthDayInvalidException()
      : super('تاریخ تولد کاربر نامعتبر است');
}
