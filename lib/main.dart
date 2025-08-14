import 'package:flutter/material.dart';
import 'package:reel_me/constants/sizes.dart';
import 'package:reel_me/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const ReelMe());
}

class ReelMe extends StatelessWidget {
  const ReelMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReelMe',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey.shade50,
        ),
        primaryColor: const Color(0xFFE9435A),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
        ),
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
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFE9435A),
      ),
      home: SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
