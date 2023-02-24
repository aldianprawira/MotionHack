import 'package:flutter/material.dart';

class TestWidgets extends StatelessWidget {
  const TestWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Text("data"),
        Text("data"),
        Text("data"),
      ],
    );
  }
}
