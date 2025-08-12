import 'package:baladeston/domain/repositories/comment_repository.dart';

class CountCommentUseCase {
  final CommentRepository repository;

  CountCommentUseCase(this.repository);

  Future<int> call(int videoId) {
    return repository.countComment(id: videoId);
  }
}
