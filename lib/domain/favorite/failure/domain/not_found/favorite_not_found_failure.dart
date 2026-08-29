import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

class FavoriteNotFoundFailure extends BaseFavoriteNotFoundFailure {
  const FavoriteNotFoundFailure();
}

class FavoriteModelNotFoundFailure extends FavoriteNotFoundFailure {
  const FavoriteModelNotFoundFailure();
}
