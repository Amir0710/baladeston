import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';

abstract class FavoriteInfrastructureFailure
    extends BaseFavoriteInfrastructureFailure {
  const FavoriteInfrastructureFailure();
}

class FavoriteNetworkFailure extends FavoriteInfrastructureFailure {
  const FavoriteNetworkFailure();
}

class FavoriteTimeoutFailure extends FavoriteInfrastructureFailure {
  const FavoriteTimeoutFailure();
}

class FavoriteServerFailure extends FavoriteInfrastructureFailure {
  const FavoriteServerFailure();
}

class FavoriteServerUnavailableFailure extends FavoriteInfrastructureFailure {
  const FavoriteServerUnavailableFailure();
}

class FavoriteBadRequestFailure extends FavoriteInfrastructureFailure {
  const FavoriteBadRequestFailure();
}

class FavoriteUnauthorizedInfrastructureFailure
    extends FavoriteInfrastructureFailure {
  const FavoriteUnauthorizedInfrastructureFailure();
}

class FavoriteForbiddenInfrastructureFailure
    extends FavoriteInfrastructureFailure {
  const FavoriteForbiddenInfrastructureFailure();
}

class FavoriteConflictFailure extends FavoriteInfrastructureFailure {
  const FavoriteConflictFailure();
}

class FavoriteRateLimitFailure extends FavoriteInfrastructureFailure {
  const FavoriteRateLimitFailure();
}

class FavoriteInvalidDataFailure extends FavoriteInfrastructureFailure {
  const FavoriteInvalidDataFailure();
}
