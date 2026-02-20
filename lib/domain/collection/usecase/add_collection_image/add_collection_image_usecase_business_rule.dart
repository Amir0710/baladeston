import 'dart:io';

import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/domain/collection/exception/collection_entity_exception.dart';

import '../../exception/collection_image_file_exception.dart';

class AddCollectionImageUsecaseBusinessRule {
  final int collectionId;
  final File image;

  const AddCollectionImageUsecaseBusinessRule({
    required this.collectionId,
    required this.image,
  });

  void validate() {
    final limit = Limits();
    final format = Formats();

    final size = image.lengthSync();
    final ext = image.path.split('.').last.toLowerCase();

    if (size > limit.maxCollectionImageSize) {
      throw CollectionImageFileTooLargeException();
    }

    if (!format.userImageFormats.contains(ext)) {
      throw CollectionImageFileInvalidFormatException();
    }
    if(collectionId <= 0 ){
      throw CollectionEntityIdInvalidException();
    }
  }
}
