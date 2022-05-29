import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';
import 'package:sample_app/screens/login_signup_screen.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginSignUp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            child: Image.asset(
              "assets/images/splash5.png",
              height: 400,
              width: double.infinity,
            ),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
