import 'package:baladeston/domain/entitys/user/user.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class UserRepositoryImpleentaion implements UserRepository{
  @override
  Future<void> changePassword({required String newPassword}) {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser() {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<User> getCurrentUser() {
    // TODO: implement getCurrentUser  
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers({required UserQueryFilter filter}) {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser({required User user}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
    
}