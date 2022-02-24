import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/Config/size_config.dart';

const kPrimaryColor = Color(0xFFFF8800);
const kPrimaryColor2 = Color(0xFFFFBB33);
const kPrimaryLightColor = Color(0xFFFFFFFF);

const kSecondaryColor2 = Color(0XFFF3F3F3);
const kSecondaryColor = Color(0XFF707070);
const kTextColor = Color(0xFF757575);
const kHeading = Colors.black;
const khighLightColor = Colors.red;

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.center,
  end: Alignment.center,
  colors: [Color(0xFFFFBB33), Color(0xFFFFBB53)],
);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

const double fontSize = 16;
const double headingfontSize = 23;
const double iconSize = 12;
const double kiconSize = 24;

const double discount = 4.5;

const TextStyle headingStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: kTextColor,
);

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
