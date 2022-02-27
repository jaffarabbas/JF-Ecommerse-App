import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.h,
      width: 131.w,
      decoration: productCardDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            p2,
            fit: BoxFit.cover,
            height: 40.h,
            width: 100.w,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Shoes',
            style: productCardTextStyle,
          ),
        ],
      ),
    );
  }
}
