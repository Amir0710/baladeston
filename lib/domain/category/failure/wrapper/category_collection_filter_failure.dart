import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

final class CategoryCollectionFilterFailure extends CategoryFailure {
  const CategoryCollectionFilterFailure({required this.cause});

  final CollectionFailure cause;
}
