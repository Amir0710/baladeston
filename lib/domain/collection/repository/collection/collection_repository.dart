import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/domain/collection/entity/collection_entity/collection_entity.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:image_picker/image_picker.dart';

abstract class CollectionRepository {
  Future<Result<PaginatedResponseModel<CollectionEntity>, CollectionFailure>>
      getCollectionByFilter({
    required CollectionQueryFilter collectionItemFilter,
  });

  Future<Result<CollectionEntity, CollectionFailure>> getCollectionById({
    required int id,
  });

  Future<Result<CollectionEntity, CollectionFailure>> createCollection({
    required CollectionEntity collection,
  });

  Future<Result<int, CollectionFailure>> updateCollectionByFilter({
    required CollectionEntity collection,
    required CollectionQueryFilter filter,
  });

  Future<Result<CollectionEntity, CollectionFailure>> updateCollectionById({
    required CollectionEntity collection,
    required int id,
  });

  Future<Result<int, CollectionFailure>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<Result<int, CollectionFailure>> deleteCollectionById({
    required int id,
  });

  Future<Result<int, CollectionFailure>> countAllCollection({
    required CollectionQueryFilter filter,
  });

  Future<Result<String, CollectionFailure>> uploadCollectionImage({
    required XFile image,
  });
}
