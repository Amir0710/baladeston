import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/video_upload_video_file/video_upload_video_file_usecase_business_rule.dart';

class VideoUploadVideoFileUsecase {
  final VideoRepository repository;

  const VideoUploadVideoFileUsecase({
    required this.repository,
  });

  Future<Result<String, VideoFailure>> call({
    required File video,
  }) async {
    final businessRule = VideoUploadVideoFileUsecaseBusinessRule(
      video: video,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.uploadVideo(video: video),
      failure: (failure) => Result.failure(failure),
    );
  }
}
