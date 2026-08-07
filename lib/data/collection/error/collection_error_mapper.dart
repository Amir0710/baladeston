import 'package:baladeston/data/collection/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection/collection_filter_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection/collection_id_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection/collection_image_file_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection/collection_image_url_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection/collection_model_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection_item/collection_item_entity_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection_item/collection_item_filter_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/collection_item/collection_item_id_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/infrastructure/collection_infrastructure_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/not_found/collection_not_found_code_mapper.dart';
import 'package:baladeston/data/collection/error/mapper/wrapper/collection_video_filter_code_mapper.dart';
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';

CollectionFailure map(
  String? code, {
  int? statusCode,
}) {
  final failure = CollectionModelCodeMapper.map(code) ??
      CollectionFilterCodeMapper.map(code) ??
      CollectionIdCodeMapper.map(code) ??
      CollectionImageFileCodeMapper.map(code) ??
      CollectionImageUrlCodeMapper.map(code) ??
      CollectionItemModelCodeMapper.map(code) ??
      CollectionItemFilterCodeMapper.map(code) ??
      CollectionItemIdCodeMapper.map(code) ??
      CollectionNotFoundCodeMapper.map(code) ??
      CollectionAccessCodeMapper.map(code) ??
      CollectionAuthCodeMapper.map(code) ??
      CollectionVideoFilterCodeMapper.map(code);

  if (failure != null) return failure;

  final infraFailure = CollectionInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );

  if (infraFailure != null) return infraFailure;

  return const CollectionUnknownFailure();
}
