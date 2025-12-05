import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/mapper/entity/verification_mapper.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class VerificationRepositoryImplementation extends VerificationRepository {
  final VerificationApi _api;

  VerificationRepositoryImplementation({required VerificationApi api})
      : _api = api;

  @override
  Future<Result<VerificationEntity>> sendVerificationCode(String phone) async {
    try {
      final model = await _api.sendVerificationCode(phone);

      final result = model.toEntity();

      return Result.success(result);
    } catch (e) {
      return Result.failure('خطا در ارسال کد تأیید: $e');
    }
  }

  @override
  Future<Result<VerificationEntity>> resendVerificationCode(
      String phone) async {
    try {
      final model = await _api.resendVerificationCode(phone);

      final result = model.toEntity();

      return Result.success(result);
    } catch (e) {
      return Result.failure('خطا در ارسال کد تأیید: $e');
    }
  }

  @override
  Future<Result<String>> checkVerificationCode({
    required VerificationEntity verification,
  }) async {
    try {
      final model = verification.toModel();
      final token = await _api.checkVerificationCode(verification: model);
      return Result.success(token);
    } catch (e) {
      return Result.failure("کد تایید اشتباه است یا ارتباط با سرور مشکل دارد");
    }
  }
}
