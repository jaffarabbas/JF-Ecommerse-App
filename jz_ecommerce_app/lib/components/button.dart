import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class NavigationButton extends StatelessWidget {
  String text;
  double height;
  double width;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry margin;
  Function navigate;

  NavigationButton(
      {Key? key,
      required this.navigate,
      required this.text,
      required this.height,
      required this.width,
      required this.padding,
      required this.margin,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BigButtonStyle,
        child: Text(
          text,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
