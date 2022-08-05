// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/appbar.dart';
import 'package:jz_ecommerce_app/components/drawer.dart';
import 'package:jz_ecommerce_app/components/mainBackground.dart';
import 'package:jz_ecommerce_app/components/primaryImage.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_,main_latest_product.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_header.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_product_slider.dart';
import '../../Model/testModel.dart';

class ProductMainPage extends StatefulWidget {
  Future<List<Product>> products;
  ProductMainPage({Key? key,required this.products}) : super(key: key);

  @override
  State<ProductMainPage> createState() => _ProductMainPageState();
}

class _ProductMainPageState extends State<ProductMainPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          // alignment: Alignment.center,
          children: [
            const Positioned(
              top: 0,
              child: MainBackground(),
            ),
            Positioned(
              top: 70.h,
              child: const ProductMainHeader(),
            ),
            Positioned(
              top: 160.h,
              height: 300.h,
              width: 410.w,
              child: ProductMainSlider(products: widget.products),
            ),
            Positioned(
              bottom: 30.h,
              width: 410,
              child: ProductMainLatestProduct()
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
