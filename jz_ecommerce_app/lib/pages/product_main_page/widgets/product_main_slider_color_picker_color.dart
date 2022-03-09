import 'package:flutter/material.dart';

class ColorPickerColor extends StatelessWidget {
  Color? color;
  ColorPickerColor({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: this.color,
      radius: 8,
    );
  }
}
