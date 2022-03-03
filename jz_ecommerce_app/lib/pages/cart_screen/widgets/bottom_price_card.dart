import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/components/button.dart';

class BottomPriceCard extends StatefulWidget {
  const BottomPriceCard({Key? key}) : super(key: key);

  @override
  State<BottomPriceCard> createState() => _BottomPriceCardState();
}

class _BottomPriceCardState extends State<BottomPriceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 150.h,
      width: 360.w,
      color: kPrimaryLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TOTAL',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10.4.sp,
                ),
              ),
              Text(
                '300\$',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10.4.sp,
                ),
              ),
            ],
          ),
          NavigationButton(
            navigate: () {},
            text: 'Add to Cart',
            height: 50.h,
            width: 300.h,
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(top: 10.h),
          ),
        ],
      ),
    );
  }
}
