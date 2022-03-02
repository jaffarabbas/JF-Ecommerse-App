import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class DynamicTextButton extends StatelessWidget {
  String text;
  Function function;
  DynamicTextButton({ Key? key,required this.function,required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        function;
      },
      child: Text(
        text,
        style: dynamicTextStyle,
      ),
    );
  }
}