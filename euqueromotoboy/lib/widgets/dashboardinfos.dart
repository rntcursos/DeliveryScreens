import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class DashBoardInfo extends StatelessWidget {
  final IconData? icon;

  final functionname;

  final numberinfo;

  const DashBoardInfo({Key? key, this.icon, this.functionname, this.numberinfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 80,
        decoration: BoxDecoration(
          color: const Color(0xFF202020),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewText(
                  text: numberinfo,
                  bold: FontWeight.bold,
                  size: 20,
                ),
                NewText(
                  text: functionname,
                  bold: FontWeight.bold,
                  size: 15,
                ),
              ],
            ),
            Icon(
              icon,
              color: Colors.orange,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
