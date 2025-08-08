import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/entitys/user/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUserById({required int id});

  Future<List<UserEntity>> getUsersByFilter(
      {required UserQueryFilter filter}); //only for admin
  Future<UserEntity> updateUser({required UserEntity user});

  Future<void> deleteUser();

  Future<UserEntity> createUser({required UserEntity user});
}
