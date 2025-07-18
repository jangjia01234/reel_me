import 'package:flutter/material.dart';
import 'package:reel_me/constants/sizes.dart';
import 'package:reel_me/screens/sign_up.dart';

void main() {
  runApp(const ReelMe());
}

class ReelMe extends StatelessWidget {
  const ReelMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReelMe',
      theme: ThemeData(
        primaryColor: const Color(0xFF843B3A),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
