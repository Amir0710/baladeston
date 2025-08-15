import 'package:baladeston/data/models/user/user_model.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';

abstract class UserApi {
  Future<UserModel>? getUserById({required int id});
  Future<List<UserModel>?> getUsersByFilter({required UserQueryFilter filter});
  Future<UserModel> updateUser({required UserModel user});
  Future<void> deleteUserById({required int id});
  Future<void> deleteUserByFilter({required UserQueryFilter filter});
  Future<UserModel> createUser({required UserModel user});
  Future<int> countUser({required UserQueryFilter filter});
}
