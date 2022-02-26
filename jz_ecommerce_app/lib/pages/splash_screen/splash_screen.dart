import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
          child: SvgPicture.asset(logo_large, semanticsLabel: 'Splash Logo'),
        ),
      ),
    );
  }
}
