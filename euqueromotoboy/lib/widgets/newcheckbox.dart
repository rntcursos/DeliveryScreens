import 'package:flutter/material.dart';

class NewCheckBox extends StatelessWidget {
  var _checkbox;
  final text;

  NewCheckBox(this._checkbox, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.orange,
          value: _checkbox,
          onChanged: (bool? value) {},
        ),
        Text(text),
      ],
    );
  }
}
