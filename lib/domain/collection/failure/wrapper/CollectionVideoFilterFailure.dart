import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';

final class CollectionVideoFilterFailure extends CollectionFailure {
  const CollectionVideoFilterFailure({required this.cause});

  final VideoFailure cause;
}
