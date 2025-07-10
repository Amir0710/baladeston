import '../entities/user.dart';

abstract class UserRepository {
  Future<User> getCurrentUser();

  Future<List<User>> getUsers({
    required int limit,
    required int offset,
  }); //only for admin
  Future<User> getUserById({required String id}); // only for admin
  Future<void> updateUser({required User user});

  Future<void> deleteUser();

  Future<void> changePassword({required String newPassword});
}
