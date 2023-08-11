import 'package:flutter/material.dart';

class Name_Style extends StatelessWidget {
  const Name_Style(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(
            color: Color.fromARGB(255, 110, 20, 20),
            fontWeight: FontWeight.w200));
  }
}
