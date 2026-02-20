import 'package:baladeston/domain/verification/entity/verification_entity.dart';
import 'package:baladeston/domain/verification/usecase/check_verification/check_verification_usecase.dart';
import 'package:baladeston/domain/verification/usecase/send_verification/send_verification_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'verification_state.dart';
part 'verification_cubit.freezed.dart';

class VerificationCubit extends Cubit<VerificationState> {
  final SendVerificationUseCase _sendVerificationUseCase;
  final CheckVerificationUseCase _checkVerificationUseCase;


  VerificationCubit({
    required SendVerificationUseCase sendVerificationUseCase,
    required CheckVerificationUseCase checkVerificationUseCase,
  })  :
        _sendVerificationUseCase = sendVerificationUseCase,
        _checkVerificationUseCase = checkVerificationUseCase,
        super(const VerificationState.initial());

  Future<void> sendVerification(String phone) async {
    emit(const VerificationState.loading());

    final result = await _sendVerificationUseCase();

    result.when(
      success: (VerificationEntity data) {
        emit(const VerificationState.codeSent());
      },
      failure: (String message) {
        emit(VerificationState.failure(message));
      },
    );
  }


  Future<void> resendVerification(String phone) async {
    emit(const VerificationState.loading());

    final result = await _resendVerificationUseCase(phone: phone);

    result.when(
      success: (VerificationEntity data) {
        emit(const VerificationState.resendSuccess());
      },
      failure: (String message) {
        emit(VerificationState.failure(message));
      },
    );
  }


  Future<void> checkVerification({required VerificationEntity verification}) async {
    emit(const VerificationState.loading());

    final result = await _checkVerificationUseCase(verification: verification);

    result.when(
      success: (String token) {
        emit(const VerificationState.otpVerified());
      },
      failure: (String message) {
        emit(VerificationState.failure(message));
      },
    );
  }

}
