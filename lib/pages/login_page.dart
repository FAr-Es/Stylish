import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/gap.dart';
import '../constant/colors.dart';
import '../widgets/custom_headertext.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeadertext(title: "Welcome Back.."),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: Container(
            width: double.infinity,
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
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password too short';
                      }
                      return null;
                    },
                  ),
                  Gap(h: 50),

                  CustomButton(
                    text: "Login",
                    color: MyColors.buttonOne,
                     onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // ✅ valid — login logic
                        print("Logging in with: ${emailController.text}");
                      } else {
                        // ❌ invalid — show error
                        print("Validation failed");
                      }
                    },
                  ),

                  Gap(h: 40),
                  Text(
                    "Create An Account",
                    style: TextStyle(
                      color: MyColors.textSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/signup_page',
                      ); 
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: MyColors.buttonOne,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
