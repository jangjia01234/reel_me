import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class NextButton extends StatefulWidget {
  const NextButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Sizes.size14,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(Sizes.size5)),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: Sizes.size14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
