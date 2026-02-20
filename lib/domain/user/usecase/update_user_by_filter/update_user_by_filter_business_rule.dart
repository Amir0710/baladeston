import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_entity_exception.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';

class UpdateUserByFilterUseCaseBusinessRule {
  final UserQueryFilter filter;
  final UserEntity user;

  const UpdateUserByFilterUseCaseBusinessRule({
    required this.filter,
    required this.user,
  });

  void validate() {
    _validateFilter();
    _validateEntity();
  }

  void _validateFilter() {


    if (filter.limit <= 0) {
      throw const UserFilterLimitException();
    }

    if ( filter.offset < 0) {
      throw const UserFilterOffsetException();
    }


  }

  void _validateEntity() {
    if (user.fullName != null ) {
      throw const UserNameEmptyException();
    }

    if (user.phoneNumber != null && user.phoneNumber!.isEmpty) {
      throw const UserPhoneRequiredException();
    }



    if (user.email != null ) {
      throw const UserEmailInvalidException();
    }

    if (user.status != null) {
      throw const UserStatusInvalidException();
    }
  }
}
