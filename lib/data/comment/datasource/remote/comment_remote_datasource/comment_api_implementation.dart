import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/comment/datasource/remote/comment_remote_datasource/comment_api.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/data/comment/model/comment_model.dart';

class CommentApiImplementation extends CommentApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/comment/$path');


  @override
  Future<List<CommentModel>> getCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );


    throw UnimplementedError();
  }

  @override
  Future<CommentModel> getCommentById({
    required int id,
  }) async {
    final uri = _url('$id');


    throw UnimplementedError();
  }


  @override
  Future<CommentModel> createComment({
    required CommentModel comment,
  }) async {
    final uri = _url('');

    final body = comment.toJson();


    throw UnimplementedError();
  }


  @override
  Future<CommentModel> updateCommentById({
    required CommentModel comment,
    required int id,
  }) async {
    final uri = _url('$id');

    final body = comment.toJson();


    throw UnimplementedError();
  }

  @override
  Future<List<CommentModel>> updateCommentByFilter({
    required CommentModel comment,
    required CommentQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    final body = comment.toJson();


    throw UnimplementedError();
  }


  @override
  Future<int> deleteCommentById({
    required int id,
  }) async {
    final uri = _url('$id');


    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );


    throw UnimplementedError();
  }


  @override
  Future<int> countAllComment({
    required CommentQueryFilter filter,
  }) async {
    final uri = _url('count').replace(
    );


    throw UnimplementedError();
  }
}
