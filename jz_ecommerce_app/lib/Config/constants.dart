import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//size configuration
const double width = 360;
const double height = 640;


const kPrimaryColor = Color(0xFF111015);
const kSecondaryColor = Color(0xFFF1F5F8);
const kPrimaryLightColor = Color(0xFFFFFFFF);

const kSecondaryFontColor = Color(0xFF626365);
const kTextColor = Color(0xFF111015);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

double inputHintFontsize = 12.sp;
double buttonFontsize1 = 12.sp;
double productCardTitile = 15.sp;
const double fontSize = 16;
const double headingfontSize = 23;
const double iconSize = 12;
const double kiconSize = 24;

const double discount = 4.5;

const String logo_small = 'assets/logo/logo_small.svg';
const String logo_medium = 'assets/logo/logo_medium.svg';
const String logo_large = 'assets/logo/logo_large.svg';
const String home_logo = 'assets/logo/logo_home.svg';
const String primary_drawer_logo = 'assets/logo/primaryDrawerLogo.svg';
const String secondary_drawer_logo = 'assets/logo/secondaryDrawerLogo.svg';

const String main_background = 'assets/backgrounds/main_background.svg';

//product images 
const String p1 = "assets/images/p1.png";
const String p2 = "assets/images/p2.png";
const String p3 = "assets/images/p3.png";
const String p4 = "assets/images/p4.png";

const String s1 = "assets/images/s1.png";
const String s2 = "assets/images/s2.png";
const String s3 = "assets/images/s3.png";
const String s4 = "assets/images/s4.png";

const String t1 = "assets/images/t1.png";
const String t2 = "assets/images/t2.png";
const String t3 = "assets/images/t3.png";
const String t4 = "assets/images/tt2.png";

const String j1 = "assets/images/j1.png";
const String j2 = "assets/images/j2.png";

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kShortNameError = "Name is too short (greater than 2)";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
