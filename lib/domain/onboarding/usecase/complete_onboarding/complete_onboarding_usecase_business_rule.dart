import 'package:baladeston/domain/onboarding/exception/onboarding_user_entity_exception.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';

class  CompleteOnboardingUsecaseBusinessRule {
  final UserEntity user;

  CompleteOnboardingUsecaseBusinessRule({
    required this.user,
  });

  void validate() {
    _validateFullName();
    _validateEmail();
    _validateGender();
    _validateBirthDay();
  }

  void _validateFullName() {
    if (user.fullName == null || user.fullName!.trim().isEmpty) {
      throw const UserFullNameEmptyException();
    }
  }

  void _validateEmail() {
    final email = user.email;
    if (email == null || !email.contains('@')) {
      throw const UserEmailInvalidException();
    }
  }

  void _validateGender() {
    if (user.gender == null) {
      throw const UserGenderRequiredException();
    }
  }

  void _validateBirthDay() {
    final birthDay = user.birthday;
    if (birthDay == null) return;

    if (birthDay.isAfter(DateTime.now())) {
      throw const UserBirthDayInvalidException();
    }
  }
}
