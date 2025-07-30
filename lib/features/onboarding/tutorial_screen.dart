import 'package:flutter/material.dart';
import 'package:reel_me/constants/gaps.dart';

import '../../constants/sizes.dart';

enum Direction { right, left }

enum Page { first, second }

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  Direction _direction = Direction.right;
  Page _showingPage = Page.first;

  void _onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dx > 0) {
      // to the right
      setState(() {
        _direction = Direction.right;
      });
    } else {
      // to the left
      setState(() {
        _direction = Direction.left;
      });
    }
  }

  void _onPanEnd(DragEndDetails details) {
    if (_direction == Direction.left) {
      setState(() {
        _showingPage = Page.second;
      });
    } else {
      setState(() {
        _showingPage = Page.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: _onPanUpdate, // 드래그 제스처 (스와이프, pan) 변경 감지
      onPanEnd: _onPanEnd, // 드래그 제스처 종료 감지
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size32),
          child: SafeArea(
            child: AnimatedCrossFade(
              firstChild: TutorialScreenOne(),
              secondChild: TutorialScreenTwo(),
              crossFadeState: _showingPage == Page.first
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 300),
            ),
          ),
        ),
      ),
    );
  }
}

class TutorialScreenTwo extends StatelessWidget {
  const TutorialScreenTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.v36,
        Text(
          "Follow the rules",
          style: TextStyle(
            fontSize: Sizes.size28,
            fontWeight: FontWeight.w800,
          ),
        ),
        Gaps.v16,
        Text(
          "Videos are personalized for you based on what you watch, like, and share.",
          style: TextStyle(
            fontSize: Sizes.size16 + Sizes.size2,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

class TutorialScreenOne extends StatelessWidget {
  const TutorialScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.v36,
        Text(
          "Watch cool videos",
          style: TextStyle(
            fontSize: Sizes.size28,
            fontWeight: FontWeight.w800,
          ),
        ),
        Gaps.v16,
        Text(
          "Videos are personalized for you based on what you watch, like, and share.",
          style: TextStyle(
            fontSize: Sizes.size16 + Sizes.size2,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
