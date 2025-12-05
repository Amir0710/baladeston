import 'package:baladeston/domain/usecase/auth/check_token_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final CheckTokenUseCase _checkTokenUseCase;

  AuthCubit({
    required CheckTokenUseCase checkTokenUseCase,

  })  : _checkTokenUseCase = checkTokenUseCase,

        super(const AuthState.initial());


  Future<void> checkToken() async {
    emit(const AuthState.loading());

    final result = await _checkTokenUseCase();

    result.when(
      success: (bool isValid) {
        if (isValid) {
          emit(const AuthState.tokenValid());
        } else {
          emit(const AuthState.tokenInvalid());
        }
      },
      failure: (String message) {
        emit(AuthState.failure(message));
      },
    );
  }
}
