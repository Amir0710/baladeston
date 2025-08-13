import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class DeleteUserByFilterUseCase {
  final UserRepository repository;

  DeleteUserByFilterUseCase(this.repository);

  Future<void> call({required UserQueryFilter filter}) {
    return repository.deleteUserByFilter(filter : filter);
  }
}
