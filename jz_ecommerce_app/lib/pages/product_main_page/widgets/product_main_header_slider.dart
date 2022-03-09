import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class ProductMainHeaderSlider extends StatefulWidget {
  const ProductMainHeaderSlider({Key? key}) : super(key: key);

  @override
  State<ProductMainHeaderSlider> createState() =>
      _ProductMainHeaderSliderState();
}

class _ProductMainHeaderSliderState extends State<ProductMainHeaderSlider> {
  @override
  Widget build(BuildContext context) {
    void changeState(int index) {
      setState(() {
        isActive = product.indexOf(product[index]);
      });
    }

    return Container(
      height: 50.h,
      width: 300.w,
      margin: EdgeInsets.only(top: 10.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: product.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              changeState(index);
            },
            child: Container(
              margin: EdgeInsets.only(right: 30.w),
              child: Text(
                product[index],
                style: index == isActive
                    ? HeaderScrollActiveHeadingTextStyle
                    : HeaderScrollHeadingTextStyle,
              ),
            ),
          );
        },
      ),
    );
  }
}
