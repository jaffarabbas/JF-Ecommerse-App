import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_product_slider_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_footer.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_product_info.dart';

class ProductSliderContent extends StatelessWidget {
  const ProductSliderContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainSliderHeader(),
        SizedBox(height: 10.h),
        PrimaryImage(image: p2, width: 180.w, height: 100.h),
        ProductInfo(),
        SizedBox(height: 10.h),
        const ProductMainFooter(),
      ],
    );
  }
}
