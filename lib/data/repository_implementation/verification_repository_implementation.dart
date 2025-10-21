import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/mapper/verification_mapper.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class VerifyRepositoryImplementation extends VerifyRepository {
  final VerificationApi _api;

  VerifyRepositoryImplementation({required VerificationApi api}) : _api = api;

  @override
  Future<Result<VerificationEntity>> sendVerificationCode(String phone) async {
    try {
      final model = await _api.sendVerificationCode(phone);

      final entity = model.toEntity();

      return Result.success(entity);
    } catch (e) {
      return Result.failure('خطا در ارسال کد تأیید: $e');
    }
  }

  @override
  Future<Result<VerificationEntity>> checkVerificationCode(String phone, String code) async {
    try {
      final model = await _api.checkVerificationCode(phone, code);

      final entity = model.toEntity();

      return Result.success(entity);
    } catch (e) {
      return Result.failure('کد تأیید اشتباه است یا ارتباط با سرور قطع شد: $e');
    }
  }
}
