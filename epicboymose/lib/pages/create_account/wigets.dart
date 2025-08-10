import 'package:flutter/material.dart';

class CustomTextFromFild extends StatelessWidget {
  const CustomTextFromFild({
    super.key,
    required this.texteditingController,
    required this.hintText,
    required this.text,
    this.textInputType,
    this.obsureText,
  });

  final TextEditingController texteditingController;
  final String text;
  final String hintText;
  final TextInputType? textInputType;
  final bool? obsureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: text,
            style: TextStyle(
              fontSize: 16,
              color: Color(0XFF1E1E24),
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: '*',
                style: TextStyle(fontSize: 16, color: Color(0XFF4FD1C5)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: texteditingController,
          obscureText: obsureText ?? false,
          keyboardType: textInputType ?? TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14),
            fillColor: Color.fromARGB(30, 100, 100, 100),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
