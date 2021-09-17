import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  final text;
  final color;
  final size;
  final bold;

  const NewText({Key? key, this.text, this.color, this.size, this.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: bold),
    );
  }
}
