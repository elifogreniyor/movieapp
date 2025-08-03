import 'package:dartz/dartz.dart';

abstract class AuthApiService {
  Future<Either> signup();
}

class AuthApiServiceImpl implements AuthApiService {
  @override
  Future<Either> signup() {
    throw UnimplementedError();
  }
}