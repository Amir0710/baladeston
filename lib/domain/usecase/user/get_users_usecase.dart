import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/entitys/user/user.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class GetUsersUseCase {
  final UserRepository repository;

  GetUsersUseCase(this.repository);

  Future<List<User>> call(UserQueryFilter filter) {
    return repository.getUsers(filter: filter);
  }
}
