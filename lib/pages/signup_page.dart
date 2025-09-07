import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/gap.dart';
import '../constant/colors.dart';
import '../widgets/custom_headertext.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeadertext(title: "Welcome"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  prefixIcon: Icons.email,
                  label: "Email",
                  hint: "Enter Your Email",
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                Gap(h: 20),
                CustomTextField(
                  prefixIcon: Icons.lock,
                  label: "Password",
                  hint: "Enter Your Password",
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                Gap(h: 20),
                CustomTextField(
                  prefixIcon: Icons.lock,
                  label: "Confirm Password",
                  hint: "Re-enter your password",
                  controller: confirmPasswordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Confirm password is required";
                    }
                    if (value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                Gap(h: 20),
                Text(
                  "By clicking the Register button, you agree to the \npublic offer",
                  style: TextStyle(color: MyColors.textSecondary),
                ),
                Gap(h: 40),
                CustomButton(
                  text: "Create Account",
                  color: MyColors.buttonOne,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("Creating account with: ${emailController.text}");
                    } else {
                      print("Validation failed");
                    }
                  },
                ),
                Gap(h: 40),
                Text(
                  "- OR Continue with -",
                  style: TextStyle(color: MyColors.textSecondary),
                ),
                Gap(h: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        print("Logo pressed");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        "assets/images/Google.png",
                        height: 70,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Logo pressed");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset("assets/images/Apple.png", height: 70),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Logo pressed");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        "assets/images/Facebook.png",
                        height: 70,
                      ),
                    ),
                  ],
                ),
                Gap(h: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I Already Have an Account",
                    
                      style: TextStyle(
                        color: MyColors.textSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login_page');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: MyColors.buttonOne,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
