import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';

class LatestProductSliderCard extends StatelessWidget {
  String image;
  LatestProductSliderCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100.h,
        padding: EdgeInsets.all(5),
        decoration: ProductMainCardDecoration,
        margin: EdgeInsets.only(right: 30.w, top: 10, bottom: 10, left: 5),
        child: PrimaryImage(image: image, width: 70.w, height: 90.h),
      ),
    );
  }
}
