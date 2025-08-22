import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double? h;
  final double? w;

  const Gap({this.h, this.w, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
