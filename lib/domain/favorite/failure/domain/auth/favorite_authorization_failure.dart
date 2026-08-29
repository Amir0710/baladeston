import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteAuthorizationFailure extends BaseFavoriteAuthFailure {
  const FavoriteAuthorizationFailure();
}

class FavoriteAccessForbiddenFailure extends FavoriteAuthorizationFailure {
  const FavoriteAccessForbiddenFailure();
}

class FavoriteAccessAdminRequiredFailure extends FavoriteAuthorizationFailure {
  const FavoriteAccessAdminRequiredFailure();
}
