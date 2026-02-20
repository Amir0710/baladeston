import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/exception/video_file_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'upload_video_usecase_business_rule.dart';

class UploadVideoUseCase {
  final VideoRepository repository;

  const UploadVideoUseCase(this.repository);

  Future<Result<String, VideoFailure>> call({
    required File file,
    required int id,
  }) async {
    try {
      final rule = UploadVideoUseCaseBusinessRule(
        file: file,
        videoId: id,
      );
      rule.validate();
    } on VideoFileException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.uploadVideo(
      video: file,
      id: id,
    );
  }
}
