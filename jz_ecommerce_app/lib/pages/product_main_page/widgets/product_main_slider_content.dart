import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_product_slider_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_footer.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_product_info.dart';
import '../../../Model/testModel.dart';

class ProductSliderContent extends StatelessWidget {
  Product products;
  ProductSliderContent({Key? key,required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainSliderHeader(),
        SizedBox(height: 10.h),
        PrimaryImage(image: products.image.toString(), width: 180.w, height: 100.h),
        ProductInfo(productName: products.name.toString(),category: products.category.toString()),
        SizedBox(height: 10.h),
        const ProductMainFooter(),
      ],
    );
  }
}
