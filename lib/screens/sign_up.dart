import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';

import '../constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign up for TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v10,
              Text(
                "Manage your account, check notifications, comment on videos, and more.",
                style: TextStyle(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              Text("Use phone / email / username"),
              Text("Continue with Apple"),
              Text("Continue with Facebook"),
              Text("Continue with Google"),
              Gaps.v96,
              Gaps.v96,
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade50,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(fontSize: Sizes.size14),
              ),
              Gaps.h5,
              Text(
                "Log in",
                style: TextStyle(
                  fontSize: Sizes.size14,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
