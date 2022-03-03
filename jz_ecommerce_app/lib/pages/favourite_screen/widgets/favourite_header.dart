import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteHeader extends StatefulWidget {
  const FavouriteHeader({Key? key}) : super(key: key);

  @override
  State<FavouriteHeader> createState() => FavouriteHeaderState();
}

class FavouriteHeaderState extends State<FavouriteHeader> {
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
            'FAVOURITE',
            style: TextStyle(
              color: kPrimaryLightColor,
              fontSize: 19.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 8.4.sp,
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
