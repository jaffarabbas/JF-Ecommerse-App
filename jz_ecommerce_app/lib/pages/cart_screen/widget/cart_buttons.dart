import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class CartButton extends StatelessWidget {
  IconData icon;
  CartButton({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: CartButtonDecoration,
        child: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
