import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class InterestButton extends StatefulWidget {
  const InterestButton({
    super.key,
    required this.interest,
  });

  final String interest;

  @override
  State<InterestButton> createState() => _InterestButtonState();
}

class _InterestButtonState extends State<InterestButton> {
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
            vertical: Sizes.size16, horizontal: Sizes.size20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.size32),
            color: _isSelected ? Theme.of(context).primaryColor : Colors.white,
            border: Border.all(
              color: Colors.black.withValues(alpha: _isSelected ? 0 : 0.1),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 5,
                spreadRadius: 5,
              )
            ]),
        child: Text(
          widget.interest,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _isSelected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
