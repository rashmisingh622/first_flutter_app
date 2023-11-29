import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      selectionColor: Colors.white,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),
    );
  }
}
