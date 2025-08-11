import 'package:epicboymose/core/wigth/custom_ElevatedButton.dart';
import 'package:epicboymose/pages/create_account/wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});

  TextEditingController nameTEController = TextEditingController();
  TextEditingController emailTEController = TextEditingController();
  TextEditingController passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 31),
              SvgPicture.asset(
                "assets/images/createAcount/Group 1597881128.svg",
              ),
              const SizedBox(height: 13),
              Text(
                'Create An Account',
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
                  color: const Color.fromARGB(255, 105, 105, 105),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFromFild(
                      texteditingController: nameTEController,
                      hintText: 'Enater Full name Here',
                      text: 'Name',
                    ),
                    const SizedBox(height: 21),
                    CustomTextFromFild(
                      texteditingController: emailTEController,
                      hintText: 'Enater Eamil Here',
                      text: 'Eamil',
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 21),
                    CustomTextFromFild(
                      texteditingController: passwordTEController,
                      hintText: 'Enater Password Here',
                      text: 'Password',
                      obsureText: true,
                    ),
                    const SizedBox(height: 176),
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
                    CustomElevatedbutton(text: 'Sing Up', onTab: () {}),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed('/signing');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            'Log In',
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
