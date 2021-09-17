import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final text;
  final font_size;

  const NewButton({Key? key, this.text, this.font_size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      child: ElevatedButton(
          child:
              Text(text.toUpperCase(), style: TextStyle(fontSize: font_size)),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.orangeAccent)))),
          onPressed: () => null),
    );
  }
}
