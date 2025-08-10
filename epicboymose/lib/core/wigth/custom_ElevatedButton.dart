import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedbutton extends StatelessWidget {
  CustomElevatedbutton({
    super.key,
    required this.text,
    required this.onTab,
    this.bgColor,
    this.fgColor,
    this.borderRadiusGeometryCirculer,
  });
  final String text;

  void Function()? onTab;
  double? height;
  double? width;
  Color? fgColor;
  Color? bgColor;
  double? borderRadiusGeometryCirculer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ?? 357,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundBuilder: AppColor,
          backgroundColor: bgColor ?? Color.fromRGBO(79, 209, 197, 1),
          foregroundColor: fgColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              borderRadiusGeometryCirculer ?? 15,
            ),
          ),
        ),
        onPressed: onTab,
        child: Text(text),
      ),
    );
  }
}
