import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';
import 'package:sample_app/screens/onboarding.dart';
import 'package:sample_app/widgets/icon_widget.dart';
import 'package:sample_app/widgets/sample_app_button.dart';
import 'package:sample_app/widgets/sample_textfield.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/images/back.png"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please enter your email address to receive a ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "one time password or sign up through social links",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SampleField(
                    hint: "Email ID",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Or through social links",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(width: 60.0),
                      MateriaIcon(
                        image: "assets/images/gIcon.png",
                        width: 40,
                      ),
                      const SizedBox(width: 10.0),
                      MateriaIcon(
                        image: "assets/images/fIcon.png",
                        width: 40,
                      ),
                      const SizedBox(width: 10.0),
                      MateriaIcon(
                        image: "assets/images/aIcon.png",
                        width: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'By continuing you agree to the ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Terms & Conditions',
                            style: TextStyle(
                                color: richTextColor,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'and ',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(
                                color: richTextColor,
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SampleButton(
                      colour: buttonColor,
                      buttonTitle: "Next",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Onboarding()));
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Sign Up',
                              style: TextStyle(
                                  color: richTextColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}
