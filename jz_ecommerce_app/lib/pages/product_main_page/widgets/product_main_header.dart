import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_header_slider.dart';

class ProductMainHeader extends StatelessWidget {
  const ProductMainHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shoes',
            style: HeaderSecondaryHeadingTextStyle,
          ),
          ProductMainHeaderSlider(),
        ],
      ),
    );
  }
}