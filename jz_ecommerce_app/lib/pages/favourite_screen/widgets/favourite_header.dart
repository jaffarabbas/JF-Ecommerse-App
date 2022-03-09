import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

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
            style: HeaderMainHeadingTextStyle
          ),
          Text(
            'Total 5 items',
            style: HeaderPrimaryHeadingTextStyle,
          ),
        ],
      ),
    );
  }
}
