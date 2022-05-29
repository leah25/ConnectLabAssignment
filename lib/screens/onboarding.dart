import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';
import 'package:sample_app/screens/home_page.dart';
import 'package:sample_app/widgets/choice_card.dart';
import 'package:sample_app/widgets/sample_app_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/onboarding.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What brings you here?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SampleCard(
                title: "Copying with Anxiety",
                isSelected: true,
              ),
              SampleCard(
                title: "Mindful Eating",
                isSelected: false,
              ),
              SampleCard(
                title: "Letting go of Stress ",
                isSelected: false,
              ),
              SampleCard(
                title: "Reframing Loneliness",
                isSelected: false,
              ),
              SampleCard(
                title: "Boosting your self- esteem",
                isSelected: false,
              ),
              SampleCard(
                title: "Other",
                isSelected: false,
              ),
              SampleButton(
                colour: buttonColor,
                buttonTitle: "Let\'s begin",
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
