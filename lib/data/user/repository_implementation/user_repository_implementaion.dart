import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/datasource/remote/user_remote_datasource/user_api.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/data/user/mapper/user_mapper.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/failure/user_failure_mapper.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

class UserRepositoryImplementation implements UserRepository {
  final UserApi api;

  const UserRepositoryImplementation({
    required this.api,
  });

  // ------------------------------------------------------
  // Get user by id
  // ------------------------------------------------------

  @override
  Future<Result<UserEntity, UserFailure>> getUserById({
    required int id,
  }) async {
    try {
      final result = await api.getUserById(id: id);
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Get users by filter
  // ------------------------------------------------------

  @override
  Future<Result<List<UserEntity>, UserFailure>> getUserByFilter({
    required UserQueryFilter filter,
  }) async {
    try {
      final result = await api.getUserByFilter(filter: filter);
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Update user by id
  // ------------------------------------------------------

  @override
  Future<Result<UserEntity, UserFailure>> updateUserById({
    required int id,
    required UserEntity user,
  }) async {
    try {
      final result = await api.updateUserById(
        id: id,
        user: user.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Update user by filter
  // ------------------------------------------------------

  @override
  Future<Result<UserEntity, UserFailure>> updateUserByFilter({
    required UserQueryFilter filter,
    required UserEntity user,
  }) async {
    try {
      final result = await api.updateUserByFilter(
        filter: filter,
        user: user.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Delete user by id
  // ------------------------------------------------------

  @override
  Future<Result<int, UserFailure>> deleteUserById({
    required int id,
  }) async {
    try {
      final result = await api.deleteUserById(id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Delete users by filter
  // ------------------------------------------------------

  @override
  Future<Result<List<int>, UserFailure>> deleteUserByFilter({
    required UserQueryFilter filter,
  }) async {
    try {
      final result = await api.deleteUserByFilter(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }

  // ------------------------------------------------------
  // Count users by filter
  // ------------------------------------------------------

  @override
  Future<Result<int, UserFailure>> countUser({
    required UserQueryFilter filter,
  }) async {
    try {
      final result = await api.countUser(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapUserException(error));
    }
  }
}
