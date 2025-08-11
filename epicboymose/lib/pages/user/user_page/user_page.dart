import 'package:epicboymose/core/wigth/custom_ElevatedButton.dart';
import 'package:epicboymose/pages/user/user_page/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 17),
              Image.asset(
                "assets/images/user_cleaint_page/user_claint_logo.png",
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  text: 'Select ',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(79, 209, 197, 1),
                  ),
                  children: [
                    TextSpan(
                      text: 'Role',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),
              Text(
                'Choose Your Specific Role',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              const SizedBox(height: 32),
              CustomButton(text: 'User', onTab: () {}),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Cleaner',
                onTab: () {},
                boderColor: Colors.white,
                bgColor: Colors.white,
              ),

              const SizedBox(height: 380),
              CustomElevatedbutton(
                text: 'Next',
                onTab: () {
                  Get.toNamed('/createAccount');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
