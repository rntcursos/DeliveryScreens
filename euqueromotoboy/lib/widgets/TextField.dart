import 'package:flutter/material.dart';

class NewTextField extends StatelessWidget {
  final obscure;
  final label;
  final hint;

  const NewTextField({Key? key, this.obscure, this.label, this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: hint),
      ),
    );
  }
}
