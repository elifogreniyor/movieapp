import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() {
    emit(Authenticated());
  }
}
