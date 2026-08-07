  import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
  import 'package:baladeston/domain/video/failure/base_video_failure.dart';

  class CollectionItemsWithVideoFailure extends BaseCollectionValidationFailure {
    final CollectionFailure? collectionFailure;
    final VideoFailure? videoFailure;

    const CollectionItemsWithVideoFailure({
      this.collectionFailure,
      this.videoFailure,
    });
  }
