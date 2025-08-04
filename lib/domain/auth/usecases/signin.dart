import 'package:dartz/dartz.dart';
import 'package:movieapp/core/usecase/usecase.dart';
import 'package:movieapp/data/auth/models/signin_req_params.dart';
import 'package:movieapp/domain/auth/repositories/auth.dart';

class SigninUseCase extends UseCase<Either, SigninReqParams> {
  final AuthRepository authRepository;
  SigninUseCase({required this.authRepository});
  @override
  Future<Either> call(SigninReqParams params) async {
    return await authRepository.signin(params);
  }
}
