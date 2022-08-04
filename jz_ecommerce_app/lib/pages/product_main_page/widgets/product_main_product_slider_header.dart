import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';

class MainSliderHeader extends StatefulWidget {
  const MainSliderHeader({Key? key}) : super(key: key);

  @override
  State<MainSliderHeader> createState() => _MainSliderHeaderState();
}

class _MainSliderHeaderState extends State<MainSliderHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline_rounded,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
      ],
    );
  }
}
