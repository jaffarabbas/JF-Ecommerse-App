import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_product_slider_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_content.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_footer.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_product_info.dart';

class ProductMainSlider extends StatefulWidget {
  const ProductMainSlider({Key? key}) : super(key: key);

  @override
  State<ProductMainSlider> createState() => _ProductMainSliderState();
}

class _ProductMainSliderState extends State<ProductMainSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 25.h, top: 10, bottom: 10),
          height: 295,
          width: 258.w,
          decoration: ProductMainCardDecoration,
          child: const ProductSliderContent(),
        );
      },
    );
  }
}
