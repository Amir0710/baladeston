import 'package:baladeston/data/video/error/mapper/video/video_filter_code_mapper.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/wrapper/CollectionVideoFilterFailure.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

  abstract final class CollectionVideoFilterCodeMapper {
    static CollectionFailure? map(String? code) {
      final VideoFailure? videoFailure = VideoFilterCodeMapper.map(code);

      if (videoFailure == null) return null;

      return CollectionVideoFilterFailure(cause: videoFailure);
    }
  }
