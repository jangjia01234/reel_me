import 'package:flutter/material.dart';

void main() {
  runApp(const ReelMe());
}

class ReelMe extends StatelessWidget {
  const ReelMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Container(),
    );
  }
}