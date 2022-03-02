import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jz_ecommerce_app/Config/constants.dart';
import 'package:jz_ecommerce_app/Config/theme.dart';
import 'package:jz_ecommerce_app/components/button.dart';
import 'package:jz_ecommerce_app/components/input_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jz_ecommerce_app/components/navigator.dart';
import 'package:jz_ecommerce_app/components/text_button.dart';
import 'package:jz_ecommerce_app/components/text_feild.dart';
import 'package:jz_ecommerce_app/pages/login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void Navigation() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(logo_medium, semanticsLabel: 'SIgnup Logo'),
          InputFeild(
              prefixIcon: Icons.person_rounded,
              controller: usernameController,
              hintText: 'Username',
              isPassword: false),
          InputFeild(
              prefixIcon: Icons.person_rounded,
              controller: emailController,
              hintText: 'Email',
              isPassword: false),
          InputFeild(
              prefixIcon: Icons.lock,
              controller: passwordController,
              hintText: 'Password',
              isPassword: true),
          NavigationButton(
            navigate: () {
              // NavigatorClass.pushNavigator(context, SignUpScreen());
            },
            text: 'SignUp',
            height: 49.h,
            width: 270.w,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: 20),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DynamicTextFeild(
                  text: 'Have an account?', style: secondaryTextStyle),
              SizedBox(
                width: 10.w,
              ),
              DynamicTextButton(function: () {
                Navigation();
              }, text: 'Login'),
            ],
          ),
        ],
      )),
    );
  }
}
