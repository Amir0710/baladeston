import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

class CollectionDataIntegrityFailure extends BaseCollectionDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const CollectionDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
