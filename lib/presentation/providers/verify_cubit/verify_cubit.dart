import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_state.dart';
part 'verify_cubit.freezed.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit() : super(const VerifyState.initial());

  Future<void> sendCode(String phone) async {
    emit(const VerifyState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const VerifyState.codeSent());
  }

  Future<void> verifyCode(String phone, String code) async {
    emit(const VerifyState.loading());
    await Future.delayed(const Duration(seconds: 2));
    if (code == "1234") {
      emit(const VerifyState.success());
    } else {
      emit(const VerifyState.failure("کد وارد شده نادرست است"));
    }
  }

  Future<void> resendCode(String phone) async {
    await Future.delayed(const Duration(seconds: 1));
    emit(const VerifyState.resendSuccess());
  }
}
