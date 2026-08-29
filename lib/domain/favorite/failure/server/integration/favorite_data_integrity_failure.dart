import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

class FavoriteDataIntegrityFailure extends BaseFavoriteDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const FavoriteDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
