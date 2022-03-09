import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';

class LatestProductHeader extends StatelessWidget {
  const LatestProductHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'LATEST SHOES',
          style: ProductMainCardBottomCardMainHeadingStyle,
        ),
        Text('Show All', style: ProductMainCardBottomCardPrimaryHeadingStyle),
      ],
    );
  }
}
