import 'package:baladeston/data/category/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category/category_model_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category/category_filter_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category/category_id_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category/category_image_file_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category/category_image_url_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category_item/category_item_model_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category_item/category_item_filter_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/category_item/category_item_id_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/infrastructure/category_infrastructure_code_mapper.dart';
import 'package:baladeston/data/category/error/mapper/wrapper/category_collection_filter_code_mapper.dart';
import 'package:baladeston/domain/category/failure/base_category_failure.dart';

CategoryFailure map(
  String? code, {
  int? statusCode,
}) {
  final failure = CategoryModelCodeMapper.map(code) ??
      CategoryFilterCodeMapper.map(code) ??
      CategoryIdCodeMapper.map(code) ??
      CategoryImageFileCodeMapper.map(code) ??
      CategoryImageUrlCodeMapper.map(code) ??
      CategoryItemModelCodeMapper.map(code) ??
      CategoryItemFilterCodeMapper.map(code) ??
      CategoryItemIdCodeMapper.map(code) ??
      CategoryAccessCodeMapper.map(code) ??
      CategoryAuthCodeMapper.map(code) ??
      CategoryCollectionFilterCodeMapper.map(code);

  if (failure != null) return failure;

  final infraFailure = CategoryInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );

  if (infraFailure != null) return infraFailure;

  return const CategoryUnknownFailure();
}
