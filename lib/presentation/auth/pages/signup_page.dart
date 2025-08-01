import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/common/helper/navigation/app_navigation.dart';
import 'package:movieapp/core/configs/theme/app_colors.dart';
import 'package:movieapp/presentation/auth/pages/signin_page.dart';
import 'package:reactive_button/reactive_button.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signupText(),
            SizedBox(height: 30),
            _emailText(),
            SizedBox(height: 30),
            _passwordText(),
            SizedBox(height: 30),
            _signupButton(),
            SizedBox(height: 30),
            _signinText(context),
          ],
        ),
      ),
    );
  }

  Widget _signupText() {
    return Text(
      'Sign Up',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }

  Widget _emailText() {
    return TextField(decoration: InputDecoration(hintText: 'Email'));
  }

  Widget _passwordText() {
    return TextField(decoration: InputDecoration(hintText: 'Password'));
  }

  Widget _signupButton() {
    return ReactiveButton(
      title: 'Sign Up',
      activeColor: AppColors.primary,
      onPressed: () async {},
      onSuccess: () async {},
      onFailure: (String error) {},
    );
  }

  Widget _signinText(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Don\'t have an account? '),
          TextSpan(
            text: 'Sign in',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const SigninPage());
              },
          ),
        ],
      ),
    );
  }
}
