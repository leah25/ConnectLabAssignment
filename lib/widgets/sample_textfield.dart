import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';

class SampleField extends StatelessWidget {
  SampleField({this.hint});

  String? hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: TextFormField(
        cursorColor: richTextColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: richTextColor),
          focusColor: richTextColor,
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: richTextColor)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: richTextColor),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: richTextColor),
          ),
        ),
      ),
    );
  }
}
