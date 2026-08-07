import 'package:baladeston/data/collection/error/mapper/collection/collection_filter_code_mapper.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/wrapper/category_collection_filter_failure.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

  abstract final class CategoryCollectionFilterCodeMapper {
  static CategoryFailure? map(String? code) {
    final CollectionFailure? collectionFailure = CollectionFilterCodeMapper.map(code) ;

    if (collectionFailure == null) return null;

    return CategoryCollectionFilterFailure(cause: collectionFailure);
  }
}