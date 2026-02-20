abstract class CollectionImageUrlException implements Exception {
  final String message;

  const CollectionImageUrlException(this.message);

  @override
  String toString() => message;
}

class CollectionImageUrlEmptyUrlException extends CollectionImageUrlException {
  CollectionImageUrlEmptyUrlException()
      : super('Image URL cannot be empty');
}

class CollectionImageUrlInvalidFormatException extends CollectionImageUrlException {
  CollectionImageUrlInvalidFormatException()
      : super('Invalid image URL format');
}

class CollectionImageUrlUnsupportedSchemeException extends CollectionImageUrlException {
  CollectionImageUrlUnsupportedSchemeException()
      : super('Image URL must use http or https scheme');
}

class CollectionImageUrlUnauthorizedHostException extends CollectionImageUrlException {
  CollectionImageUrlUnauthorizedHostException()
      : super('Image URL host is not allowed');
}

class CollectionImageUrlInvalidIdException extends CollectionImageUrlException {
  CollectionImageUrlInvalidIdException()
      : super('Invalid image id. Id must be greater than 0');
}
