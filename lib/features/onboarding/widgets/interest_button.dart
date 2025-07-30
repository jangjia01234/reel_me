import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class InterestButton extends StatelessWidget {
  const InterestButton({
    super.key,
    required this.interest,
  });

  final String interest;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Sizes.size16, horizontal: Sizes.size20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.size32),
          color: Colors.white,
          border: Border.all(
            color: Colors.black.withValues(alpha: 0.1),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 5,
              spreadRadius: 5,
            )
          ]),
      child: Text(
        interest,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
