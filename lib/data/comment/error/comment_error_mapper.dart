import 'package:baladeston/data/comment/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/comment/comment_filter_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/comment/comment_id_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/comment/comment_model_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/infrastructure/comment_infrastructure_code_mapper.dart';
import 'package:baladeston/data/comment/error/mapper/not_found/comment_not_found_code_mapper.dart';
import 'package:baladeston/domain/comment/failure/base_comment_failure.dart';

CommentFailure map(
    String? code, {
      int? statusCode,
    }) {
  final failure = CommentModelCodeMapper.map(code) ??
      CommentFilterCodeMapper.map(code) ??
      CommentIdCodeMapper.map(code) ??
      CommentNotFoundCodeMapper.map(code) ??
      CommentAccessCodeMapper.map(code) ??
      CommentAuthCodeMapper.map(code);

  if (failure != null) return failure;

  final infraFailure = CommentInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );

  if (infraFailure != null) return infraFailure;

  return const CommentUnknownFailure();
}
