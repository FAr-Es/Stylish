import 'package:flutter/material.dart';
import '../constant/colors.dart';

class CustomHeadertext extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomHeadertext({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: MyColors.textPrimary,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
