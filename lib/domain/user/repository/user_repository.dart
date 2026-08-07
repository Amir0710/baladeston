import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';

abstract class UserRepository {

  Future<Result<UserEntity, UserFailure>> getUserById({
    required int id,
  });

  Future<Result<List<UserEntity>, UserFailure>> getUserByFilter({
    required UserQueryFilter filter,
  });

  Future<Result<UserEntity, UserFailure>> updateUserById({
    required int id ,
    required UserEntity user,
  });

  Future<Result<int, UserFailure>> updateUserByFilter({
    required UserQueryFilter filter ,
    required UserEntity user,
  });

  Future<Result<int, UserFailure>> deleteUserById({
    required int id,
  });

  Future<Result<int, UserFailure>> deleteUserByFilter({
    required UserQueryFilter filter,
  });

  Future<Result<int, UserFailure>> countUser({
    required UserQueryFilter filter,
  });


}
