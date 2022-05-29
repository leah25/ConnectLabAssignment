import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';

class SampleButton extends StatefulWidget {
  SampleButton({this.colour, this.buttonTitle, this.onTap});

  Color? colour;
  String? buttonTitle;
  VoidCallback? onTap;

  @override
  State<SampleButton> createState() => _SampleButtonState();
}

class _SampleButtonState extends State<SampleButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            height: 40,
            width: 320,
            decoration: BoxDecoration(
                border: Border.all(color: buttonColor, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
                color: widget.colour),
            child: Center(
              child: Text(
                widget.buttonTitle!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
