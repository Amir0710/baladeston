import 'package:baladeston/data/discount/error/mapper/auth/access_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/auth/auth_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/discount/discount_filter_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/discount/discount_id_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/discount/discount_model_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/infrastructure/discount_infrastructure_code_mapper.dart';
import 'package:baladeston/data/discount/error/mapper/not_found/discount_not_found_code_mapper.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

DiscountFailure map(
    String? code, {
      int? statusCode,
    }) {
  final failure = DiscountModelCodeMapper.map(code) ??
      DiscountFilterCodeMapper.map(code) ??
      DiscountIdCodeMapper.map(code) ??
      DiscountNotFoundCodeMapper.map(code) ??
      DiscountAccessCodeMapper.map(code) ??
      DiscountAuthCodeMapper.map(code);

  if (failure != null) return failure;

  final infraFailure = DiscountInfrastructureCodeMapper.map(
    code: code,
    statusCode: statusCode,
  );

  if (infraFailure != null) return infraFailure;

  return const DiscountUnknownFailure();
}
