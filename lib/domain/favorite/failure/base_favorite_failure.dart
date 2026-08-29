abstract class FavoriteFailure {
  const FavoriteFailure();
}

abstract class BaseFavoriteInfrastructureFailure extends FavoriteFailure {
  const BaseFavoriteInfrastructureFailure();
}

abstract class BaseFavoriteServerFailure extends FavoriteFailure {
  const BaseFavoriteServerFailure();
}

abstract class BaseFavoriteDataIntegrityFailure
    extends BaseFavoriteServerFailure {
  const BaseFavoriteDataIntegrityFailure();
}

abstract class BaseFavoriteModelParsingFailure
    extends BaseFavoriteServerFailure {
  const BaseFavoriteModelParsingFailure();
}

abstract class BaseFavoriteServerValidationFailure
    extends BaseFavoriteServerFailure {
  const BaseFavoriteServerValidationFailure();
}

abstract class BaseFavoriteDomainFailure extends FavoriteFailure {
  const BaseFavoriteDomainFailure();
}

abstract class BaseFavoriteValidationFailure extends BaseFavoriteDomainFailure {
  const BaseFavoriteValidationFailure();
}

abstract class BaseFavoriteAuthFailure extends BaseFavoriteDomainFailure {
  const BaseFavoriteAuthFailure();
}

abstract class BaseFavoriteNotFoundFailure extends BaseFavoriteDomainFailure {
  const BaseFavoriteNotFoundFailure();
}

class FavoriteUnknownFailure extends FavoriteFailure {
  const FavoriteUnknownFailure();
}
