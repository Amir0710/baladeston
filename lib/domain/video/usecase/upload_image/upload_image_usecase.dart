import 'dart:io';

import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/video/exception/video_image_exception.dart';
import 'package:baladeston/domain/video/failure/video_failure.dart';
import 'package:baladeston/domain/video/repository/video_repository.dart';
import 'package:baladeston/domain/video/usecase/upload_image/upload_image_usecase_business_rule.dart';

class UploadVideoImageUseCase {
  final VideoRepository repository;

  const UploadVideoImageUseCase(this.repository);

  Future<Result<String, VideoFailure>> call({
    required int id,
    required File image,
  }) async {
    try {
      final rule = UploadVideoImageUseCaseBusinessRule(
        id: id,
        image: image,
      );
      rule.validate();
    } on VideoImageException catch (e) {
      return Result.failure(
        VideoValidationFailure(e.message),
      );
    }

    return repository.uploadImage(
      id: id,
      image: image,
    );
  }
}

