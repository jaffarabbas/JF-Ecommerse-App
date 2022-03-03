import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartHeader extends StatefulWidget {
  const CartHeader({Key? key}) : super(key: key);

  @override
  State<CartHeader> createState() => _CartHeaderState();
}

class _CartHeaderState extends State<CartHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'CART',
            style: TextStyle(
              color: kPrimaryLightColor,
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 15.4.sp,
            ),
          ),
          Text(
            'Total 5 items',
            style: TextStyle(
              color: kPrimaryLightColor,
              fontSize: 9.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 4.sp,
            ),
          ),
        ],
      ),
    );
  }
}
