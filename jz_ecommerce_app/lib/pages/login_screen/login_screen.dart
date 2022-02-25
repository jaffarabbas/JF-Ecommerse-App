import 'package:flutter/material.dart';
import 'package:jz_ecommerce_app/components/input_feild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InputFeild(prefixIcon: Icons.person_rounded,controller: emailController, hintText: 'Email',isPassword: false),
            InputFeild(prefixIcon: Icons.lock,controller: passwordController, hintText: 'Password', isPassword: true),
          ],
        )
      ),
    );
  }
}