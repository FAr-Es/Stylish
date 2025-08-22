import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/gap.dart';
import '../constant/colors.dart';
import '../widgets/custom_headertext.dart';
import '../widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeadertext(title: "Welcome"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                ClipRRect(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  "You want Authentic, here \nyou go!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: MyColors.textPrimary,
                  ),
                ),
                Gap(h: 60),
                CustomButton(text: "Creat Account", color: MyColors.buttonOne, onTap: () {Navigator.pushNamed(context, '/signup_page');}),
                Gap(h: 20),
                CustomButton(text: "Login", color: MyColors.buttonTwo,onTap: () {Navigator.pushNamed(context, '/login_page');}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
