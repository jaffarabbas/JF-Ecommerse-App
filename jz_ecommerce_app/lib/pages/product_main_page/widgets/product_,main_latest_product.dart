import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_latest_product_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_latest_product_slider.dart';

class ProductMainLatestProduct extends StatelessWidget {
  const ProductMainLatestProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LatestProductHeader(),
          LatestProductSlider()
        ],
      ),
    );
  }
}
