import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/pages/cart_screen/cart_screen.dart';
import 'package:jz_ecommerce_app/pages/favourite_screen/favourite_screen.dart';
import 'package:jz_ecommerce_app/pages/home_screen/home_screen.dart';
import 'package:jz_ecommerce_app/pages/login_screen/login_screen.dart';
import 'package:jz_ecommerce_app/pages/product_main_page/product_main_page.dart';
import 'package:jz_ecommerce_app/pages/signup_screen/signup_screen.dart';
import 'package:jz_ecommerce_app/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        theme: theme(),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(width,height),
    );
  }
}
