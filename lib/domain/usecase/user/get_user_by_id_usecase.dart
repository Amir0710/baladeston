import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/domain/filters/user_query_filter.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class GetUserByIdUseCase {
  final UserRepository repository;

  GetUserByIdUseCase(this.repository);

  Future<List<UserEntity>?> call({required UserQueryFilter filter}) {
    return repository.getUsersByFilter(filter:  filter);
  }
}
