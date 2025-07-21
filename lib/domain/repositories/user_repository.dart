

import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/entitys/user/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();

  Future<List<User>> getUsers(
      {required UserQueryFilter filter}); //only for admin
  Future<void> updateUser({required User user});

  Future<void> deleteUser();

  Future<void> changePassword({required String newPassword});
}
