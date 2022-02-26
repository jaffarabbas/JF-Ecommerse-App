import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 235.h,
            child: SvgPicture.asset(main_background,
                semanticsLabel: 'Splash Logo', fit: BoxFit.cover),
          ),
          Positioned(
            top: 50.h,
            child: Container(
              child: SvgPicture.asset(home_logo, semanticsLabel: 'Signup Logo')),
          )
        ],
      ),
    );
  }
}
