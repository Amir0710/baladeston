import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api.dart';
import 'package:baladeston/data/datasources/remote/verificarion_remote_datasource/verification_api_implementaoin.dart';
import 'package:baladeston/data/repository_implementation/verification_repository_implementation.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';
import 'package:baladeston/domain/usecase/verification/check_verificatoin_code_usecase.dart';
import 'package:baladeston/domain/usecase/verification/sent_verification_code_usecase.dart';
import 'package:baladeston/presentation/providers/verify_cubit/verify_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


final getIt = GetIt.instance;

Future<void> initVerificationModule() async {
  getIt
  // API
    ..registerLazySingleton<VerificationApi>(
          () => VerificationApiImplementation(client: getIt<SupabaseClient>()),
    )

  // Repository
    ..registerLazySingleton<VerifyRepository>(
          () => VerifyRepositoryImplementation(api: getIt<VerificationApi>()),
    )

  // UseCases
    ..registerLazySingleton<SendVerificationCodeUseCase>(
          () => SendVerificationCodeUseCase(getIt<VerifyRepository>()),
    )
    ..registerLazySingleton<CheckVerificationCodeUseCase>(
          () => CheckVerificationCodeUseCase(getIt<VerifyRepository>()),
    )

  // Cubit
    ..registerFactory<VerifyCubit>(
          () => VerifyCubit(
        sendVerificationCodeUseCase: getIt<SendVerificationCodeUseCase>(),
        checkVerificationCodeUseCase: getIt<CheckVerificationCodeUseCase>(),
      ),
    );
}
