import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jorden\nShoes',
                style: ProductMainCardBottomCardMainHeadingStyle),
            SizedBox(height: 5.h),
            Text(
              'Mens Runner',
              style: ProductMainCardSubHeadingStyle,
            ),
          ],
        ),
      ],
    );
  }
}
