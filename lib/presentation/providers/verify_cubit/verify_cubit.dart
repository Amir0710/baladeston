import 'package:baladeston/domain/usecase/verification/check_verificatoin_code_usecase.dart';
import 'package:baladeston/domain/usecase/verification/sent_verification_code_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

part 'verify_state.dart';
part 'verify_cubit.freezed.dart';

class VerifyCubit extends Cubit<VerifyState> {
  final SendVerificationCodeUseCase sendVerificationCodeUseCase;
  final CheckVerificationCodeUseCase checkVerificationCodeUseCase;

  VerifyCubit({
    required this.sendVerificationCodeUseCase,
    required this.checkVerificationCodeUseCase,
  }) : super(const VerifyState.initial());

  /// ارسال کد تأیید برای شماره تلفن
  Future<void> sendCode(String phone) async {
    emit(const VerifyState.loading());
    final result = await sendVerificationCodeUseCase.call(phone: phone);
    result.when(
      success: (VerificationEntity data) {
        emit(const VerifyState.codeSent());
      },
      failure: (String message) {
        emit(VerifyState.failure(message));
      },
    );
  }
  void debugTest() {
    final test = const VerifyState.failure('err');
    if (test is _Failure) {
      print(test.message); // باید بدون خطا کامپایل بشه
    }
  }

  /// بررسی صحت کد تأیید دریافتی
  Future<void> checkCode({
    required String phone,
    required String code,
  }) async {
    emit(const VerifyState.loading());
    final result = await checkVerificationCodeUseCase.call(
      phone: phone,
      code: code,
    );

    result.when(
      success: (VerificationEntity data) {
        emit(const VerifyState.success());
      },
      failure: (String message) {
        emit(VerifyState.failure(message));
      },
    );
  }

  /// ارسال مجدد کد تأیید
  Future<void> resendCode(String phone) async {
    emit(const VerifyState.loading());
    final result = await sendVerificationCodeUseCase.call(phone: phone);

    result.when(
      success: (VerificationEntity data) {
        emit(const VerifyState.resendSuccess());
      },
      failure: (String message) {
        emit(VerifyState.failure(message));
      },
    );
  }
}
