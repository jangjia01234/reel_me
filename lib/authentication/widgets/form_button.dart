import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.disabled});

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size14,
          horizontal: Sizes.size10,
        ),
        color: disabled ? Colors.grey.shade200 : Theme.of(context).primaryColor,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: Sizes.size14,
                fontWeight: FontWeight.w500,
                color: disabled ? Colors.black45 : Colors.white,
              ),
              child: Text("Next", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
