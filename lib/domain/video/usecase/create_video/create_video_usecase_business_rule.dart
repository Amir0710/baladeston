import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/exception/video_entity_exception.dart';

class CreateVideoUseCaseBusinessRule {
  final VideoEntity video;

  const CreateVideoUseCaseBusinessRule(this.video);

  void validate() {
    _validateRequiredFields();
    _validateValues();
  }

  void _validateRequiredFields() {
    if (video.title.isEmpty) {
      throw const VideoTitleEmptyException();
    }

  }

  void _validateValues() {
    if (video.videoDuration! <= 0) {
      throw const VideoDurationInvalidException();
    }

    if (video.uploaderId <= 0) {
      throw const VideoOwnerInvalidException();
    }
  }
}
