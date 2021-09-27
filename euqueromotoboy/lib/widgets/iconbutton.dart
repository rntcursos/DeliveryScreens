import 'package:flutter/material.dart';

class NewIconButton extends StatelessWidget {
  final size;
  final colors;
  final icon;
  final VoidCallback pressed;
  const NewIconButton(
      {Key? key, this.size, this.colors, this.icon, required this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(50),
      ),
      child: IconButton(
        onPressed: pressed,
        icon: Icon(icon),
      ),
    );
  }
}
