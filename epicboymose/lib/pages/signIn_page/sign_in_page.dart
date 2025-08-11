import 'package:epicboymose/pages/get_otp/get_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/wigth/custom_ElevatedButton.dart';
import '../create_account/wigets.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  TextEditingController signinEmailTEController = TextEditingController();
  TextEditingController passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 31),
              SvgPicture.asset(
                "assets/images/createAcount/Group 1597881128.svg",
              ),
              const SizedBox(height: 13),
              Text(
                'Sign In Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Text(
                textAlign: TextAlign.center,
                'Start your journey in playmate with fun \ninteractive lessons now',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CustomTextFromFild(
                      texteditingController: signinEmailTEController,
                      hintText: 'Enter Full name Here',
                      text: 'Email',
                    ),
                    const SizedBox(height: 21),
                    CustomTextFromFild(
                      texteditingController: passwordTEController,
                      hintText: 'Enter Email Here',
                      text: 'Password',
                      obsureText: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.offAllNamed('/getOtp');
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF4FD1C5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 250),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27.0),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'By continuing, you confirm that you are 18 years or older and agree to our',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Terms & Condition',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0XFF4FD1C5),
                              ),
                            ),
                            TextSpan(text: 'and '),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0XFF4FD1C5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    CustomElevatedbutton(text: 'Log In', onTab: () {}),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0XFF4FD1C5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
