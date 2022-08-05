import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class ProductInfo extends StatelessWidget {
  String productName;
  String category;
  ProductInfo({Key? key,required this.productName , required this.category }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName,
                style: ProductMainCardBottomCardMainHeadingStyle),
            SizedBox(height: 5.h),
            Text(
              category,
              style: ProductMainCardSubHeadingStyle,
            ),
          ],
        ),
      ],
    );
  }
}
