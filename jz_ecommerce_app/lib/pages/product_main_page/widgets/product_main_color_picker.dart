import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/widgets/product_main_slider_color_picker_color.dart';

class ProductMainColorPicker extends StatelessWidget {
  const ProductMainColorPicker({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColorPickerColor(color: kPrimaryColor),
          ColorPickerColor(color: kPrimaryLightColor)
        ],
      ),
    );
  }
}