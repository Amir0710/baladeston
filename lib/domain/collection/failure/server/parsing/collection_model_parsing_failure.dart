import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

class CollectionModelParsingFailure extends BaseCollectionModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const CollectionModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
