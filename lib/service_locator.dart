import 'package:get_it/get_it.dart';
import 'package:movieapp/core/network/dio_client.dart';
import 'package:movieapp/data/auth/repositories/auth.dart';
import 'package:movieapp/data/auth/source/auth_api_service.dart';
import 'package:movieapp/domain/auth/repositories/auth.dart';
import 'package:movieapp/domain/auth/usecases/signin.dart';
import 'package:movieapp/domain/auth/usecases/signup.dart';

final sl = GetIt.instance;
void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //Services
  sl.registerSingleton<AuthService>(AuthApiServiceImpl());

  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  //UseCases
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
