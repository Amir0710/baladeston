import 'package:baladeston/data/datasources/comment_remote_datasource/comment_remote_datasource.dart';
import 'package:riverpod/riverpod.dart';

final commentRemoteDataSourceProvider =
    Provider<CommentRemoteDataSource>((ref) {
  return CommentRemoteDataSourceImplementaion();
});
