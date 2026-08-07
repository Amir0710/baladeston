import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_entity_exception.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';

class UpdateUserByFilterUseCaseBusinessRule {
  final UserQueryFilter filter;
  final UserEntity user;

  const UpdateUserByFilterUseCaseBusinessRule({
    required this.filter,
    required this.user ,

  });

  void validate() {
    _validateNotEmpty();
    _validateRange();
    _validateRole();
    _validateEntity();
  }

  void _validateNotEmpty() {

  }

  void _validateRange() {
    if ( filter.limit <= 0) {
      throw const UserFilterLimitException();
    }

    if ( filter.offset < 0) {
      throw const UserFilterOffsetException();
    }
  }

  void _validateRole() {

  }


  void _validateEntity() {
    if (!_hasUpdatableFields()) {
      throw const UserNoUpdatableFieldsException();
    }

    if (user.fullName != null && user.fullName!.isEmpty) {
      throw const UserNameEmptyException();
    }

    if (user.phoneNumber != null && user.phoneNumber!.isEmpty) {
      throw const UserPhoneRequiredException();
    }

    if (user.email != null && !_isValidEmail(user.email!)) {
      throw const UserEmailInvalidException();
    }

    if (user.status != null &&
        user.status!.index < 0) {
      throw const UserStatusInvalidException();
    }
  }

  // --------------------------------------------------
  // Helpers
  // --------------------------------------------------
  bool _hasUpdatableFields() {
    return user.fullName != null ||
        user.email != null ||
        user.phoneNumber != null ||
        user.avatarUrl != null ||
        user.status != null ||
        user.password != null ||
        user.gender != null ||
        user.birthday != null ||
        user.bio != null ||
        user.country != null ||
        user.language != null ||
        user.timezone != null;
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email);
  }
}
