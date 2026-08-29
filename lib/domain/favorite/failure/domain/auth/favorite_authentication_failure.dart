import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteAuthenticationFailure extends BaseFavoriteAuthFailure {
  const FavoriteAuthenticationFailure();
}

class FavoriteAuthUnauthorizedFailure extends FavoriteAuthenticationFailure {
  const FavoriteAuthUnauthorizedFailure();
}

class FavoriteAuthLoginRequiredFailure extends FavoriteAuthenticationFailure {
  const FavoriteAuthLoginRequiredFailure();
}

class FavoriteAuthInvalidCredentialsFailure extends FavoriteAuthenticationFailure {
  const FavoriteAuthInvalidCredentialsFailure();
}
