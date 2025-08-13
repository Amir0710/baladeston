import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class CountUsersUseCase {
  final UserRepository repository;

  CountUsersUseCase(this.repository);

  Future<int> call({required UserQueryFilter filter}) async {
    return repository.countUser(filter: filter);
  }
}
