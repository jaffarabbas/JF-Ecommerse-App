import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widget/cart_buttons.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widget/cart_product_info.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({Key? key}) : super(key: key);

  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CartCardDecoration,
      margin: EdgeInsets.all(20),
      height: 90.0.h,
      width: 280.0.w,
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: kPrimaryColor,
                size: 20.sp,
              ),
            ),
          ),
          Container(
            height: 80.h,
            width: 90.w,
            child: Image.asset(
              p2,
              fit: BoxFit.scaleDown,
            ),
          ),
          CartProdctInfo(),
        ],
      ),
    );
  }
}
