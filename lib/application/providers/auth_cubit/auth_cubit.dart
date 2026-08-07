import 'package:baladeston/application/providers/auth_cubit/auth_state.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/usecase/check_token/check_token_usecase.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase.dart';
import 'package:baladeston/domain/auth/usecase/finish_onboarding/finish_onboarding_usecase.dart';
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase.dart';
import 'package:baladeston/domain/auth/usecase/logout/logout_usecase.dart';
import 'package:baladeston/domain/auth/usecase/refresh_token/refresh_token_usecase.dart';
import 'package:baladeston/domain/auth/usecase/skip_onboarding/skip_onboarding_usecase.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/presentation/mapper/auth/auth_failure_mapper.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginWithPasswordUseCase _loginWithPasswordUseCase;
  final CheckUserExistsUseCase _checkUserExistsUseCase;
  final CheckTokenUseCase _checkTokenUseCase;
  final FinishOnBoardingUseCase _finishOnBoardingUseCase;
  final SkipOnBoardingUseCase _skipOnBoardingUseCase;
  final LogoutUseCase _logoutUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;

  AuthCubit({
    required LoginWithPasswordUseCase loginWithPasswordUseCase,
    required CheckUserExistsUseCase checkUserExistsUseCase,
    required CheckTokenUseCase checkTokenUseCase,
    required FinishOnBoardingUseCase finishOnBoardingUseCase,
    required SkipOnBoardingUseCase skipOnBoardingUseCase,
    required LogoutUseCase logoutUseCase,
    required RefreshTokenUseCase refreshTokenUseCase,
  })  : _loginWithPasswordUseCase = loginWithPasswordUseCase,
        _checkUserExistsUseCase = checkUserExistsUseCase,
        _checkTokenUseCase = checkTokenUseCase,
        _finishOnBoardingUseCase = finishOnBoardingUseCase,
        _skipOnBoardingUseCase = skipOnBoardingUseCase,
        _logoutUseCase = logoutUseCase,
        _refreshTokenUseCase = refreshTokenUseCase,
        super(const AuthState.initial());

  // ------------------------------------------------
  // Internal Failure Handler
  // ------------------------------------------------

  void _emitFailure(AuthFailure failure) {
    emit(
      AuthState.error(
        error: mapAuthFailureToStateError(failure),
        failure: failure,
      ),
    );
  }

  // ------------------------------------------------
  // CHECK USER
  // ------------------------------------------------

  Future<void> checkUserExists({
    required String phone,
  }) async {
    emit(const AuthState.checkingUser());

    final result = await _checkUserExistsUseCase(phone: phone);

    result.when(
      success: (exists) {
        emit(AuthState.userChecked(exists: exists));
      },
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // LOGIN
  // ------------------------------------------------

  Future<void> loginWithPassword({
    required UserPasswordEntity credentials,
  }) async {
    emit(const AuthState.loggingIn());

    final result = await _loginWithPasswordUseCase(credentials: credentials);

    result.when(
      success: (_) => emit(const AuthState.authenticated()),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // TOKEN
  // ------------------------------------------------

  Future<void> checkToken() async {
    emit(const AuthState.checkingToken());

    final result = await _checkTokenUseCase();

    result.when(
      success: (isValid) {
        if (isValid) {
          emit(const AuthState.authenticated());
        } else {
          emit(const AuthState.unauthenticated());
        }
      },
      failure: _emitFailure,
    );
  }

  Future<void> refreshToken({
    required String refreshToken,
  }) async {
    emit(const AuthState.refreshingToken());

    final result = await _refreshTokenUseCase(refreshToken: refreshToken);

    result.when(
      success: (_) => emit(const AuthState.authenticated()),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // ONBOARDING
  // ------------------------------------------------

  Future<void> finishOnBoarding({
    required UserEntity user,
    required String onboarding,
  }) async {
    emit(const AuthState.finishingOnboarding());

    final result = await _finishOnBoardingUseCase(
      user: user,
      onboarding: onboarding,
    );

    result.when(
      success: (_) => emit(const AuthState.authenticated()),
      failure: _emitFailure,
    );
  }

  Future<void> skipOnBoarding({
    required UserEntity user,
    required String onboarding,
  }) async {
    emit(const AuthState.skippingOnboarding());

    final result = await _skipOnBoardingUseCase(
      user: user,
      onboarding: onboarding,
    );

    result.when(
      success: (_) => emit(const AuthState.authenticated()),
      failure: _emitFailure,
    );
  }

  // ------------------------------------------------
  // LOGOUT
  // ------------------------------------------------

  Future<void> logout({
    required LogoutRequestEntity logoutRequest,
  }) async {
    emit(const AuthState.loggingOut());

    final result = await _logoutUseCase(
      logoutRequest: logoutRequest,
    );

    result.when(
      success: (_) => emit(const AuthState.unauthenticated()),
      failure: _emitFailure,
    );
  }
}
