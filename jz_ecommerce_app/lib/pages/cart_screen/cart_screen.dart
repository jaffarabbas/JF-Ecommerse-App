import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/appbar.dart';
import 'package:jz_ecommerce_app/components/drawer.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widget/cart_product_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            Positioned(
              top: 0,
              child: Container(
                child: SvgPicture.asset(main_background,
                    semanticsLabel: 'Splash Logo', fit: BoxFit.fitHeight),
              ),
            ),
            Positioned(
              top: 80.h,
              child: Container(
                width: 350.w,
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CART',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 15.4.sp,
                      ),
                    ),
                    Text(
                      'Total 5 items',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return CartProductCard();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
