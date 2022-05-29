import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';

class MateriaIcon extends StatelessWidget {
  MateriaIcon({this.image, this.width});
  String? image;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image!,
          fit: BoxFit.contain,
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: richTextColor, width: 0.5),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
