import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/common/helper/navigation/app_navigation.dart';
import 'package:movieapp/core/configs/assets/app_images.dart';
import 'package:movieapp/presentation/auth/pages/signin.dart';
import 'package:movieapp/presentation/home/pages/home.dart';
import 'package:movieapp/presentation/splash/bloc/splash_cubit.dart';
import 'package:movieapp/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Authenticated) {
            AppNavigation.pushReplacement(context, HomePage());
          } else if (state is Unauthenticated) {
            AppNavigation.pushReplacement(context, SigninPage());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBackground),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Color(0XFF1A1B20).withOpacity(0), Color(0XFF1A1B20)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
