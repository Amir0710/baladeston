import 'package:baladeston/data/models/user/user_model.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getCurrentUser();
  Future<List<UserModel>> getUsers(UserQueryFilter filter);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser();
  Future<void> changePassword(String newPassword);
}
