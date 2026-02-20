import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class CollectionImageFileException implements Exception {
  final String message;

  const CollectionImageFileException(this.message);

  @override
  String toString() => message;
}

class CollectionImageFileTooLargeException extends CollectionImageFileException {
  CollectionImageFileTooLargeException()
      : super("Image size exceeds ${limits.maxCollectionImageSize}MB limit");
}

class CollectionImageFileInvalidFormatException extends CollectionImageFileException {
  CollectionImageFileInvalidFormatException()
      : super('Invalid image format. Allowed formats: jpg, jpeg, png, webp');
}

class CollectionImageFileInvalidIdException extends CollectionImageFileException {
  CollectionImageFileInvalidIdException()
      : super('invalid id. correct id is positive and grater than 0 ');
}
