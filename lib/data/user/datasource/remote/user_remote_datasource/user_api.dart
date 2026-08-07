    import 'package:baladeston/data/user/filter/user_query_filter.dart';
  import 'package:baladeston/data/user/model/user_model.dart';

  abstract class UserApi {
    /// Get user by id
    Future<UserModel> getUserById({
      required int id,
    });

    /// Get users by filter
    Future<List<UserModel>> getUserByFilter({
      required UserQueryFilter filter,
    });

    /// Update user by id
    Future<UserModel> updateUserById({
      required int id,
      required UserModel user,
    });

    /// Update user by filter
    Future<List<UserModel>> updateUserByFilter({
      required UserQueryFilter filter,
      required UserModel user,
    });

    /// Delete user by id
    /// returns deleted user id
    Future<int> deleteUserById({
      required int id,
    });

    /// Delete users by filter
    /// returns deleted user ids
    Future<List<int>> deleteUserByFilter({
      required UserQueryFilter filter,
    });

    /// Count users by filter
    Future<int> countUser({
      required UserQueryFilter filter,
    });
  }
