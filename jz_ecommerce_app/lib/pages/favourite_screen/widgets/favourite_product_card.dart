import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/pages/favourite_screen/widgets/favourite_card_info.dart';

class FavouriteProductCard extends StatefulWidget {
  const FavouriteProductCard({Key? key}) : super(key: key);

  @override
  FavouriteProductCardState createState() => FavouriteProductCardState();
}

class FavouriteProductCardState extends State<FavouriteProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartCardDecoration,
      margin: EdgeInsets.symmetric(horizontal:20.w,vertical:10.h),
      height: 95.0.h,
      width: 280.0.w,
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: kPrimaryColor,
                size: 20.sp,
              ),
            ),
          ),
          Container(
            height: 80.h,
            width: 90.w,
            child: Image.asset(
              p2,
              fit: BoxFit.scaleDown,
            ),
          ),
          FavouriteProdctInfo(),
        ],
      ),
    );
  }
}
