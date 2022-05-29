import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';
import 'package:sample_app/screens/login_page.dart';
import 'package:sample_app/widgets/icon_widget.dart';
import 'package:sample_app/widgets/sample_app_button.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/icon1.png",
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Welcome to",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: 'Connected',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Minds',
                              style: TextStyle(
                                  color: richTextColor,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/signup_image.png",
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SampleButton(
                    colour: buttonColor,
                    buttonTitle: "Sign Up",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MateriaIcon(
                        image: "assets/images/gIcon.png",
                        width: 70,
                      ),
                      const SizedBox(width: 10.0),
                      MateriaIcon(
                        image: "assets/images/fIcon.png",
                        width: 70,
                      ),
                      const SizedBox(width: 10.0),
                      MateriaIcon(
                        image: "assets/images/aIcon.png",
                        width: 70,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Login',
                            style: const TextStyle(
                                color: richTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
