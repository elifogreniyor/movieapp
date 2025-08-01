import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/presentation/splash/bloc/splash_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  Future<void> appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(Authenticated());
  }
}
