import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_product_slider_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_content.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_footer.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_product_info.dart';

import '../../../Model/testModel.dart';

class ProductMainSlider extends StatefulWidget {
  Future<List<Product>> products;
  ProductMainSlider({Key? key, required this.products}) : super(key: key);

  @override
  State<ProductMainSlider> createState() => _ProductMainSliderState();
}

class _ProductMainSliderState extends State<ProductMainSlider> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.products,
      builder: (context, AsyncSnapshot snapshot) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: snapshot.data?.length,
        itemBuilder: (context, index) {
          print(snapshot.data);
          return Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 25.h, top: 10, bottom: 10),
            height: 200.h,
            width: 258.w,
            decoration: ProductMainCardDecoration,
            child: ProductSliderContent(
              products: snapshot.data[index],
            ),
          );
        },
      );
    });
  }
}
