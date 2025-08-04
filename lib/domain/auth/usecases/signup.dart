import 'package:dartz/dartz.dart';
import 'package:movieapp/core/usecase/usecase.dart';
import 'package:movieapp/data/auth/models/signup_req_params.dart';
import 'package:movieapp/domain/auth/repositories/auth.dart';

class SignupUseCase extends UseCase<Either, SignupReqParams> {
  final AuthRepository authRepository;
  SignupUseCase({required this.authRepository});
  @override
  Future<Either> call(SignupReqParams params) async {
    return await authRepository.signup(params);
  }
}
