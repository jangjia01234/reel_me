import 'package:flutter/material.dart';
import 'package:reel_me/constants/sizes.dart';
import 'package:reel_me/features/onboarding/interests_screen.dart';

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
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFE9435A),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: InterestsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
