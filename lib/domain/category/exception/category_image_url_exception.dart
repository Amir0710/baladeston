abstract class CollectionImageUrlException implements Exception {
  final String message;

  const CollectionImageUrlException(this.message);

  @override
  String toString() => message;
}

class EmptyImageUrlException extends CollectionImageUrlException {
  EmptyImageUrlException()
      : super('Image URL cannot be empty');
}

class InvalidImageUrlFormatException extends CollectionImageUrlException {
  InvalidImageUrlFormatException()
      : super('Invalid image URL format');
}

class UnsupportedImageUrlSchemeException
    extends CollectionImageUrlException {
  UnsupportedImageUrlSchemeException()
      : super('Image URL must use http or https scheme');
}

class UnauthorizedImageHostException
    extends CollectionImageUrlException {
  UnauthorizedImageHostException()
      : super('Image URL host is not allowed');
}

class InvalidImageUrlIdException extends CollectionImageUrlException {
  InvalidImageUrlIdException()
      : super('Invalid image id. Id must be greater than 0');
}
