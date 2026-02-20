import 'package:baladeston/domain/video/exception/video_id_exception.dart';

class DeleteVideoByIdUseCaseBusinessRule {
  final int id;

  const DeleteVideoByIdUseCaseBusinessRule({
    required this.id,
  });

  void validate() {
    _validateId();
  }


  void _validateId() {
    if (id <= 0) {
      throw const VideoIdInvalidException();
    }
  }
}
