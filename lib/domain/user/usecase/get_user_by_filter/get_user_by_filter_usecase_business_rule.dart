import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';

class GetUserByFilterUseCaseBusinessRule {
  final UserQueryFilter filter;

  const GetUserByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotEmpty();
    _validateRange();
    _validateRole();
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
}
