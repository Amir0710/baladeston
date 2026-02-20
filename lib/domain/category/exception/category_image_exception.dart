import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class CategoryImageException implements Exception {
  final String message;

  const CategoryImageException(this.message);

  @override
  String toString() => message;
}

class ImageTooLargeException extends CategoryImageException {
  ImageTooLargeException()
      : super("Image size exceeds ${limits.maxCategoryImageSize}MB limit");
}

class InvalidImageFormatException extends CategoryImageException {
  InvalidImageFormatException()
      : super('Invalid image format. Allowed formats: jpg, jpeg, png, webp');
}

class InvalidIdException extends CategoryImageException {
  InvalidIdException()
      : super('invalid id. correct id is positive and grater than 0 ');
}
