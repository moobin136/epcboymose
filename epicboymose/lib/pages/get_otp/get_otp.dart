import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GetOtp extends StatelessWidget {
  const GetOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 31),
            SvgPicture.asset("assets/images/createAcount/Group 1597881128.svg"),
            const SizedBox(height: 13),
            Text(
              'Apply Code Here',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              textAlign: TextAlign.center,
              'Please check your email. Give correct\nauthentication code here.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black26,
              ),
            ),
            const SizedBox(height: 16),
            PinCodeTextField(
              appContext: context,
              length: 6,
              pinTheme: PinTheme(
                borderRadius: BorderRadius.circular(15),
                shape: PinCodeFieldShape.box,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
