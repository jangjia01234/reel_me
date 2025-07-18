import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';

import '../constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onSignupTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Gaps.v96,
                  Text(
                    "Log in to TikTok",
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
                  Text("Continue with Facebook"),
                  Text("Continue with Google"),
                ],
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: Sizes.size11,
                    color: Colors.grey.shade600,
                  ),
                  children: <TextSpan>[
                    const TextSpan(text: 'By continuing, you agree to our'),
                    TextSpan(
                      text: ' Terms of Service ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text: 'and acknowledge that you have read our',
                    ),
                    TextSpan(
                      text: ' Privacy Policy ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const TextSpan(
                      text:
                          'to learn how we collect, use, and share your data.',
                    ),
                  ],
                ),
              ),
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
                "Don't have an account?",
                style: TextStyle(fontSize: Sizes.size14),
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onSignupTap(context),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: Sizes.size14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
