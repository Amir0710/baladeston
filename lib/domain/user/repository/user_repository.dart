import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';

abstract class UserRepository {

  /// Get user by id
  Future<Result<UserEntity, UserFailure>> getUserById({
    required int id,
  });

  /// Get users by filter
  Future<Result<List<UserEntity>, UserFailure>> getUserByFilter({
    required UserQueryFilter filter,
  });

  /// Update user by id
  Future<Result<UserEntity, UserFailure>> updateUserById({
    required int id ,
    required UserEntity user,
  });

  /// Update user by filter
  Future<Result<UserEntity, UserFailure>> updateUserByFilter({
    required UserQueryFilter filter ,
    required UserEntity user,
  });

  /// Delete user by id
  Future<Result<int, UserFailure>> deleteUserById({
    required int id,
  });

  /// Delete users by filter
  Future<Result<List<int>, UserFailure>> deleteUserByFilter({
    required UserQueryFilter filter,
  });

  /// Count users by filter
  Future<Result<int, UserFailure>> countUser({
    required UserQueryFilter filter,
  });


}
