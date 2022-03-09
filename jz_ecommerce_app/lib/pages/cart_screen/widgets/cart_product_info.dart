import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/widgets/cart_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProdctInfo extends StatefulWidget {
  const CartProdctInfo({Key? key}) : super(key: key);

  @override
  _CartProdctInfoState createState() => _CartProdctInfoState();
}

class _CartProdctInfoState extends State<CartProdctInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, bottom: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jordens',
            style: ProductCardInfoTextStyle
          ),
          Container(
            width: 90.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CartButton(icon: Icons.add),
                Text(
                  '5',
                  style: ProductCardInfoTextStyle
                ),
                CartButton(icon: Icons.horizontal_rule_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
