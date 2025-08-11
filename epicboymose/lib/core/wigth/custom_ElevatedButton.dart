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
    this.fontsiz,
    this.height,
    this.width,
  });
  final String text;

  void Function()? onTab;
  double? height;
  double? width;
  Color? fgColor;
  Color? bgColor;
  double? borderRadiusGeometryCirculer;
  double? fontsiz;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56,
      width: width ?? 357,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // backgroundBuilder: AppColor,
          backgroundColor: bgColor ?? Color.fromRGBO(47, 177, 164, 1),
          foregroundColor: fgColor ?? const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(
              borderRadiusGeometryCirculer ?? 15,
            ),
          ),
        ),
        onPressed: onTab,
        child: Text(text, style: TextStyle(fontSize: fontsiz ?? 16,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
