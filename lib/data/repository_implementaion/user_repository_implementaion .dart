import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class UserRepositoryImplementation implements UserRepository {
  @override
  Future<UserEntity> createUser({required UserEntity user}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUserById() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUserById() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<List<UserEntity>> getUsersByFilter({required UserQueryFilter filter}) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> updateUser({required UserEntity user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
