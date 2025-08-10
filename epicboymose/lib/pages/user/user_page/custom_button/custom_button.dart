import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.text,
    required this.onTab,
    this.boderColor,
    this.boderWidth,
    this.textColor,
    this.height,
    this.width,
    this.bgColor
  });
  // VoidCallbackAction onTab;
  String text;
  VoidCallback onTab;
  Color? textColor;
  double? height;
  double? width;
  Color? boderColor;
  double? boderWidth;
  Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: height ?? 88,
        width: width ?? 357,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          border: Border.all(
            color: boderColor ?? Color.fromRGBO(79, 209, 197, 1),
            width: boderWidth ?? 1,
          ),
          color: bgColor ?? Color.fromRGBO(79, 209, 197, 1).withOpacity(0.08),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Color.fromRGBO(79, 209, 197, 1),
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
