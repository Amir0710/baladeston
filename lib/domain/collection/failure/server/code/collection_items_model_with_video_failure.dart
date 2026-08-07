  import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
  import 'package:baladeston/domain/video/failure/base_video_failure.dart';

  class CollectionItemsModelWithVideoFailure extends BaseCollectionServerValidationFailure {
    final CollectionFailure? collectionFailure;
    final VideoFailure? videoFailure;

    const CollectionItemsModelWithVideoFailure({
      this.collectionFailure,
      this.videoFailure,
    });
  }
