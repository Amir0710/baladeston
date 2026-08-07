import 'package:baladeston/application/providers/verification_cubit/verification_state.dart';
import 'package:baladeston/domain/verification/entity/verification_check/verification_check_entity.dart';
import 'package:baladeston/domain/verification/entity/verification_request/verification_request_entity.dart';
import 'package:baladeston/domain/verification/failure/verification_failure.dart';
import 'package:baladeston/domain/verification/usecase/check_action_verification_code/check_action_verification_code_usecase.dart';
import 'package:baladeston/domain/verification/usecase/check_login_verification_code/check_login_verification_code_usecase.dart';
import 'package:baladeston/domain/verification/usecase/send_verification_request/send_verification_request_usecase.dart';
import 'package:baladeston/presentation/mapper/verification/verification_failure_mapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerificationCubit extends Cubit<VerificationState> {
  final SendVerificationRequestUseCase _sendVerificationRequestUseCase;
  final CheckLoginVerificationCodeUseCase _checkLoginVerificationCodeUseCase;
  final CheckActionVerificationCodeUseCase _checkActionVerificationCodeUseCase;

  VerificationCubit({
    required SendVerificationRequestUseCase sendVerificationRequestUseCase,
    required CheckLoginVerificationCodeUseCase
        checkLoginVerificationCodeUseCase,
    required CheckActionVerificationCodeUseCase
        checkActionVerificationCodeUseCase,
  })  : _sendVerificationRequestUseCase = sendVerificationRequestUseCase,
        _checkLoginVerificationCodeUseCase = checkLoginVerificationCodeUseCase,
        _checkActionVerificationCodeUseCase =
            checkActionVerificationCodeUseCase,
        super(const VerificationState.initial());

  void _emitFailure(VerificationFailure failure) {
    emit(
      VerificationState.error(
        error: mapVerificationFailureToStateError(failure),
        failure: failure,
      ),
    );
  }

  Future<void> requestVerificationCode({
    required VerificationRequestEntity verificationRequest,
  }) async {
    emit(const VerificationState.requestingCode());

    final result = await _sendVerificationRequestUseCase(
      verificationRequest: verificationRequest,
    );

    result.when(
      success: (response) =>
          emit(VerificationState.codeRequested(response: response)),
      failure: _emitFailure,
    );
  }

  Future<void> checkLoginVerificationCode({
    required VerificationCheckEntity verificationCheck,
  }) async {
    emit(const VerificationState.verifyingLoginCode());

    final result = await _checkLoginVerificationCodeUseCase(
      verificationCheck: verificationCheck,
    );

    result.when(
      success: (authSession) =>
          emit(VerificationState.loginVerified(session: authSession)),
      failure: _emitFailure,
    );
  }

  Future<void> checkActionVerificationCode({
    required VerificationCheckEntity verificationCheck,
  }) async {
    emit(const VerificationState.verifyingActionCode());

    final result = await _checkActionVerificationCodeUseCase(
      verificationCheck: verificationCheck,
    );

    result.when(
      success: (success) =>
          emit(VerificationState.actionVerified(success: success)),
      failure: _emitFailure,
    );
  }
}
