import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/common/helper/navigation/app_navigation.dart';
import 'package:movieapp/core/configs/assets/app_images.dart';
import 'package:movieapp/presentation/home/pages/home_pages.dart';
import 'package:movieapp/presentation/auth/pages/signin_page.dart';
import 'package:movieapp/presentation/splash/bloc/splash_bloc.dart';
import 'package:movieapp/presentation/splash/bloc/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Authenticated) {
            AppNavigator.pushAndRemove(context, SigninPage());
          }
          if (state is UnAuthenticated) {
            AppNavigator.pushAndRemove(context, SigninPage());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.splashBackground),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff1A1B20).withOpacity(0),
                    const Color(0xff1A1B20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
