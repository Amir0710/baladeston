import 'package:baladeston/data/reaction/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/reaction/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/reaction/error/mapper/reaction/reaction_model_code_mapper.dart';
import 'package:baladeston/data/reaction/error/mapper/infrastructure/reaction_infrastructure_code_mapper.dart';
import 'package:baladeston/data/reaction/error/mapper/not_found/reaction_not_found_code_mapper.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

ReactionFailure map(
  String? code, {
  int? statusCode,
}) {
  final infraFailure = ReactionInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );
  if (infraFailure != null) return infraFailure;

  final authFailure = ReactionAuthCodeMapper.map(code);
  if (authFailure != null) return authFailure;

  final accessFailure = ReactionAccessCodeMapper.map(code);
  if (accessFailure != null) return accessFailure;

  final modelFailure = ReactionModelCodeMapper.map(code);
  if (modelFailure != null) return modelFailure;

  final notFoundFailure = ReactionNotFoundCodeMapper.map(code);
  if (notFoundFailure != null) return notFoundFailure;

  return const ReactionUnknownFailure();
}
