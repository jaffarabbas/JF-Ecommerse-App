import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  String image;
  String name;
  ProductCard({Key? key,required this.image,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: 131.w,
      decoration: productCardDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80.h,
            width: 90.w,
            child: Image.asset(
              image,
              fit: BoxFit.scaleDown,
            ),
          ),
          Text(
            name,
            style: productCardTextStyle,
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
