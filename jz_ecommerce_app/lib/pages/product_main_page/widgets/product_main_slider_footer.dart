import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_color_picker.dart';

class ProductMainFooter extends StatelessWidget {
  const ProductMainFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '190.00\$',
          style: ProductMainCardPriceHeadingStyle,
        ),
        Container(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Colors',
                style: ProductMainCardTypeHeadingStyle,
              ),
              ProductMainColorPicker(),
            ],
          ),
        ),
      ],
    );
  }
}
