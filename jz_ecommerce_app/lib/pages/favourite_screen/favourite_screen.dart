// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/appbar.dart';
import 'package:jz_ecommerce_app/components/mainBackground.dart';
import 'package:jz_ecommerce_app/components/button.dart';
import 'package:jz_ecommerce_app/components/drawer.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widgets/bottom_price_card.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widgets/cart_page_header.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widgets/cart_product_card.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widgets/cart_product_card_list.dart';
import 'package:jz_ecommerce_app/pages/favourite_screen/widgets/favourite_header.dart';
import 'package:jz_ecommerce_app/pages/favourite_screen/widgets/favourite_product_list.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
              top: 80.h,
              child: const FavouriteHeader(),
            ),
            const FavouriteProductList(),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
