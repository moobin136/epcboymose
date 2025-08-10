import 'package:epicboymose/pages/create_account/create_account.dart';
import 'package:epicboymose/pages/get_otp/get_otp.dart';
import 'package:epicboymose/pages/signIn_page/sign_in_page.dart';
import 'package:epicboymose/pages/splash/splash_page.dart';
import 'package:epicboymose/pages/user/user_page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: ('/splash'), page: () => SplashPage()),
        GetPage(name: ('/user'), page: () => UserPage()),
        GetPage(name: ('/createAccount'), page: () => CreateAccount()),
        GetPage(name: ('/signing'), page: () => SignInPage()),
        GetPage(name: ('/getOtp'), page: () => GetOtp()),
      ],
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
