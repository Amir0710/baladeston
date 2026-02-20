abstract class FavoriteEntityException implements Exception {
  final String message;

  const FavoriteEntityException({required this.message});

  @override
  String toString() => message;
}

class FavoriteOwnerRequiredException extends FavoriteEntityException {
  const FavoriteOwnerRequiredException()
      : super(message: 'OwnerId is required');
}

class FavoriteTargetRequiredException extends FavoriteEntityException {
  const FavoriteTargetRequiredException()
      : super(message: 'TargetId is required');
}

class FavoriteEntityIdInvalidException extends FavoriteEntityException {
  const FavoriteEntityIdInvalidException()
      : super(message: 'Favorite id must be greater than 0');
}

class FavoriteTargetTypeInvalidException extends FavoriteEntityException {
  const FavoriteTargetTypeInvalidException()
      : super(message: 'Invalid favorite target type');
}

class FavoriteInvalidEntityException extends FavoriteEntityException {
  const FavoriteInvalidEntityException()
      : super(message: 'Favorite filed is not correct');
}

class FavoriteDuplicateException extends FavoriteEntityException {
  const FavoriteDuplicateException()
      : super(message: 'Favorite already exists');
}

class FavoriteNoUpdatableFieldsException extends FavoriteEntityException {
  const FavoriteNoUpdatableFieldsException()
      : super(message: 'No updatable fields provided');
}
