import 'package:epicboymose/pages/splash/splash_controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 190),
            RichText(
              text: TextSpan(
                text: 'Company ',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(79, 209, 197, 1),
                ),
                children: [
                  TextSpan(
                    text: 'Name',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(159, 211, 84, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Image.asset("assets/images/splash/splash_screen.png"),
            ),
            const SizedBox(height: 142),
            Image.asset("assets/images/splash/splash_screen_buttom.png"),
          ],
        ),
      ),
    );
  }
}
