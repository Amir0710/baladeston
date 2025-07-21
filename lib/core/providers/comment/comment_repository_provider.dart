import 'package:baladeston/core/providers/comment/comment_remote_datasource_provider.dart';
import 'package:baladeston/data/repository_implementaion/comment_repository_implemeentaion.dart';
import 'package:riverpod/riverpod.dart';
import 'package:baladeston/domain/repositories/comment_repository.dart';

final commentRepositoryProvider = Provider<CommentRepository>((ref) {
  final remoteDataSource = ref.read(commentRemoteDataSourceProvider);

  return CommentRepositoryImplementation(
    remoteDataSource: remoteDataSource,
  );
});
