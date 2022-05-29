import 'package:flutter/material.dart';
import 'package:sample_app/constants/color.dart';

class SampleCard extends StatefulWidget {
  SampleCard({this.title, this.isSelected});

  String? title;
  bool? isSelected;

  @override
  State<SampleCard> createState() => _SampleCardState();
}

class _SampleCardState extends State<SampleCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected!;
          });
        },
        child: Card(
          color: cardColor,
          shadowColor: widget.isSelected! ? buttonColor : backgroundColor,
          elevation: 5,
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.isSelected = !widget.isSelected!;
              });
            },
            child: Container(
              height: 40,
              width: 320,
              decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          widget.isSelected! ? shadowColor : backgroundColor)),
              child: Center(
                child: Text(
                  widget.title!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
