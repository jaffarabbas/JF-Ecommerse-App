import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/components/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteProdctInfo extends StatefulWidget {
  const FavouriteProdctInfo({Key? key}) : super(key: key);

  @override
  FavouriteProdctInfoState createState() => FavouriteProdctInfoState();
}

class FavouriteProdctInfoState extends State<FavouriteProdctInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, bottom: 7.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jordens',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '300\$',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          NavigationButton(
            navigate: () {},
            text: 'Add to Cart',
            height: 23.h,
            width: 90.w,
            padding: const EdgeInsets.all(4),
            margin: EdgeInsets.only(top: 2.h),
          ),
        ],
      ),
    );
  }
}
