import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> getUserById({required int id});
  Future<List<UserEntity>?> getUsersByFilter({required UserQueryFilter filter});
  Future<UserEntity> updateUser({required UserEntity user});
  Future<void> deleteUserById({required int id});
  Future<void> deleteUserByFilter({required UserQueryFilter filter});
  Future<UserEntity> createUser({required UserEntity user});
  Future<int> countUser({required UserQueryFilter filter});
  Future<void> login({required String phoneNumber,required String password }) ;
  Future<bool> checkUserExists({required String phoneNumber});

}
