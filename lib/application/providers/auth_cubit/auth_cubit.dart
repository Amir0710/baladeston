import 'package:baladeston/application/providers/auth_cubit/auth_state.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/usecase/check_token/check_token_usecase.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase.dart';
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase.dart';
import 'package:baladeston/domain/auth/usecase/send_otp/send_otp_usecase.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';
import 'package:bloc/bloc.dart';


AuthStateError _mapAuthFailureToStateError(AuthFailure failure) {
  if (failure is NetworkFailure) {
    return AuthStateError.networkError;
  }

  if (failure is UserNotFoundFailure) {
    return AuthStateError.userNotFound;
  }

  if (failure is UnauthorizedFailure) {
    return AuthStateError.unauthorized;
  }

  return AuthStateError.unknownError;
}

class AuthCubit extends Cubit<AuthState> {
  final CheckUserExistsUseCase _checkUserExistsUseCase;
  final LoginWithPasswordUseCase _loginWithPasswordUseCase;
  final CheckTokenUseCase _checkTokenUseCase;
  final SendOtpUseCase _sendOtpUseCase;

  AuthCubit({
    required CheckUserExistsUseCase checkUserExistsUseCase,
    required LoginWithPasswordUseCase loginWithPasswordUseCase,
    required CheckTokenUseCase checkTokenUseCase,
    required SendOtpUseCase sendOtpUseCase,
  })  : _checkUserExistsUseCase = checkUserExistsUseCase,
        _loginWithPasswordUseCase = loginWithPasswordUseCase,
        _checkTokenUseCase = checkTokenUseCase,
        _sendOtpUseCase = sendOtpUseCase,
        super(const AuthState.initial());

  // --------------------------------------------------
  // Check User Exists
  // --------------------------------------------------
  Future<void> checkUserExists({required String phone}) async {
    emit(const AuthState.checkingUserExists());

    final result = await _checkUserExistsUseCase(phone: phone);

    result.when(
      success: (exists) {
        emit(AuthState.userExistsChecked(exists: exists));
      },
      failure: (failure) {
        emit(AuthState.error(
          error: _mapAuthFailureToStateError(failure),
          errorMessage: failure.message,
        ));
      },
    );
  }

  // --------------------------------------------------
  // Login With Password
  // --------------------------------------------------
  Future<void> loginWithPassword({
    required LoginWithPasswordAttribute attribute,
  }) async {
    emit(const AuthState.loading());

    final result = await _loginWithPasswordUseCase(attribute: attribute);

    result.when(
      success: (value) {
        emit(const AuthState.authenticated());
      },
      failure: (failure) {
        emit(AuthState.error(
          error: _mapAuthFailureToStateError(failure),
          errorMessage: failure.message,
        ));
      },
    );
  }

  // --------------------------------------------------
  // Send OTP
  // --------------------------------------------------
  Future<void> sendOtp({
    required VerificationEntity verification,
  }) async {
    emit(const AuthState.loading());

    final result = await _sendOtpUseCase(verification: verification);

    result.when(
      success: (verificationEntity) {
        emit(AuthState.otpSent(verification: verificationEntity));
      },
      failure: (failure) {
        emit(AuthState.error(
          error: _mapAuthFailureToStateError(failure),
          errorMessage: failure.message,
        ));
      },
    );
  }

  // --------------------------------------------------
  // Check Token
  // --------------------------------------------------
  Future<void> checkToken({required VerificationEntity verification}) async {
    emit(const AuthState.loading());

    final result = await _checkTokenUseCase(verification: verification );

    result.when(
      success: (isValid) {
        if (isValid) {
          emit(const AuthState.authenticated());
        } else {
          emit(const AuthState.unauthenticated());
        }
      },
      failure: (failure) {
        emit(AuthState.error(
          error: _mapAuthFailureToStateError(failure),
          errorMessage: failure.message,
        ));
      },
    );
  }
}
