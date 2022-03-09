import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_latest_product_slider_card.dart';

class LatestProductSlider extends StatefulWidget {
  const LatestProductSlider({Key? key}) : super(key: key);

  @override
  State<LatestProductSlider> createState() => _LatestProductSliderState();
}

class _LatestProductSliderState extends State<LatestProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 390.w,
      margin: EdgeInsets.only(top: 10.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return LatestProductSliderCard(image: p2);
        },
      ),
    );
  }
}
