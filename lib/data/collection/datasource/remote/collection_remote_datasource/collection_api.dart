import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/collection/filter/model/collection_query_filter.dart';
import 'package:baladeston/data/collection/model/collection_model/collection_model.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:image_picker/image_picker.dart';


abstract class CollectionApi {
  Future<Result<PaginatedResponseModel<CollectionModel>, CollectionFailure>>
  getCollectionByFilter({
    required CollectionQueryFilter filter,
  });

  Future<Result<CollectionModel, CollectionFailure>> getCollectionById({
    required int id,
  });

  Future<Result<CollectionModel, CollectionFailure>> createCollection({
    required CollectionModel collection,
  });

  Future<Result<int, CollectionFailure>> updateCollectionByFilter({
    required CollectionModel collection,
    required CollectionQueryFilter filter,
  });

  Future<Result<CollectionModel, CollectionFailure>> updateCollectionById({
    required CollectionModel collection,
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
