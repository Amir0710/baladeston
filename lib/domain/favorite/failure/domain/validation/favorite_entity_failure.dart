import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteEntityFailure extends BaseFavoriteValidationFailure {
  const FavoriteEntityFailure();
}

class FavoriteEntityInvalidUserIdFailure extends FavoriteEntityFailure {
  const FavoriteEntityInvalidUserIdFailure();
}

class FavoriteEntityInvalidTargetIdFailure extends FavoriteEntityFailure {
  const FavoriteEntityInvalidTargetIdFailure();
}

class FavoriteEntityInvalidFavoriteTypeFailure extends FavoriteEntityFailure {
  const FavoriteEntityInvalidFavoriteTypeFailure();
}

class FavoriteEntityInvalidTargetTypeFailure extends FavoriteEntityFailure {
  const FavoriteEntityInvalidTargetTypeFailure();
}
