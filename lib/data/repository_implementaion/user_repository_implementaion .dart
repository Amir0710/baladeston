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
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<List<UserEntity>> getUsers({required UserQueryFilter filter}) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> updateUser({required UserEntity user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
