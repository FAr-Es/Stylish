import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.color, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: MyColors.background,
          padding: const EdgeInsets.symmetric(vertical: 15),
          textStyle: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
