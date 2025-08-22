import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signup_page.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';
import 'pages/splash_page.dart';
import 'pages/login_page.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothes Store',
      home: const WelcomePage(),
      routes: {
        '/login_page': (context) => const LoginPage(),
        '/signup_page': (context) => const SignupPage(),
        '/welcome_page': (context) => const WelcomePage(),
        '/splash_page': (context) => const SplashPage(),
      }
    );
  }
}
