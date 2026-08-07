import 'package:baladeston/data/video/error/mapper/video/video_file_code_mapper.dart';
import 'package:baladeston/data/video/error/mapper/video/video_url_code_mapper.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

import 'mapper/auth/video_access_code_mapper.dart';
import 'mapper/auth/video_auth_code_mapper.dart';
import 'mapper/video/video_entity_code_mapper.dart';
import 'mapper/video/video_filter_code_mapper.dart';
import 'mapper/video/video_id_code_mapper.dart';
import 'mapper/video/video_image_file_code_mapper.dart';
import 'mapper/video/video_image_url_code_mapper.dart';
import 'mapper/infrastructure/video_infrastructure_code_mapper.dart';

VideoFailure map(
  String? code, {
  int? statusCode,
}) {
  final failure = VideoEntityCodeMapper.map(code) ??
      VideoFileCodeMapper.map(code) ??
      VideoFilterCodeMapper.map(code) ??
      VideoIdCodeMapper.map(code) ??
      VideoImageFileCodeMapper.map(code) ??
      VideoImageUrlCodeMapper.map(code) ??
      VideoUrlCodeMapper.map(code) ??
      VideoAccessCodeMapper.map(code) ??
      VideoAuthCodeMapper.map(code);

  if (failure != null) return failure;

  final infraFailure = VideoInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );

  if (infraFailure != null) return infraFailure;

  return const VideoUnknownFailure();
}
