import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

class FavoriteModelParsingFailure extends BaseFavoriteModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const FavoriteModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
