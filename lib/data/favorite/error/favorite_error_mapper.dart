import 'package:baladeston/data/favorite/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/favorite/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/favorite/error/mapper/favorite/favorite_model_code_mapper.dart';
import 'package:baladeston/data/favorite/error/mapper/infrastructure/favorite_infrastructure_code_mapper.dart';
import 'package:baladeston/data/favorite/error/mapper/not_found/favorite_not_found_code_mapper.dart';
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

FavoriteFailure map(
  String? code, {
  int? statusCode,
}) {
  final infraFailure = FavoriteInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );
  if (infraFailure != null) return infraFailure;

  final authFailure = FavoriteAuthCodeMapper.map(code);
  if (authFailure != null) return authFailure;

  final accessFailure = FavoriteAccessCodeMapper.map(code);
  if (accessFailure != null) return accessFailure;

  final modelFailure = FavoriteModelCodeMapper.map(code);
  if (modelFailure != null) return modelFailure;

  final notFoundFailure = FavoriteNotFoundCodeMapper.map(code);
  if (notFoundFailure != null) return notFoundFailure;

  return const FavoriteUnknownFailure();
}
