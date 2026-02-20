import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/exception/video_entity_exception.dart';
import 'package:baladeston/domain/video/exception/video_id_exception.dart';

class UpdateVideoByIdUseCaseBusinessRule {
  final int id;
  final VideoEntity video;

  const UpdateVideoByIdUseCaseBusinessRule({
    required this.id,
    required this.video,
  });

  void validate() {
    _validateId();
    _validateUpdatableFields();
    _validateEntityValues();
  }


  void _validateId() {
    if (id <= 0) {
      throw const VideoIdInvalidException();
    }
  }

  void _validateUpdatableFields() {
    if (!_hasUpdatableFields()) {
      throw const VideoNoUpdatableFieldsException();
    }
  }

  void _validateEntityValues() {
    if (video.videoDuration != null && video.videoDuration! <= 0) {
      throw const VideoDurationInvalidException();
    }



    if (video.uploaderId != null && video.uploaderId! <= 0) {
      throw const VideoOwnerInvalidException();
    }
  }

  bool _hasUpdatableFields() {
    return video.title != null ||
        video.videoDuration != null ||
        video.uploaderId != null;
  }
}
