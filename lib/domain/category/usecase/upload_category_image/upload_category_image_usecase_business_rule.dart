import 'dart:io';

import 'package:baladeston/domain/category/exception/category_image_exception.dart';

class  UploadCategoryImageUseCaseBusinessRule {
  final File image;


  static const int maxSizeInBytes = 5 * 1024 * 1024;
  static const allowedExtensions = ['jpg', 'jpeg', 'png', 'webp'];

  UploadCategoryImageUseCaseBusinessRule({required this.image});

  void validate() {
    final size = image.lengthSync();
    final ext = image.path.split('.').last.toLowerCase();

    if (size > maxSizeInBytes) {
      throw ImageTooLargeException();
    }

    if (!allowedExtensions.contains(ext)) {
      throw InvalidImageFormatException();
    }
  }
}

