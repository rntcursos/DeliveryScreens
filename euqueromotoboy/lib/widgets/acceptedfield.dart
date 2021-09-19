import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class AcceptedField extends StatelessWidget {
  const AcceptedField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {},
        child: Ink(
          width: MediaQuery.of(context).size.width - 10,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NewText(
                  text: "Endereço de entrega:",
                  size: 16,
                  color: Colors.orange,
                  bold: FontWeight.bold,
                ),
                Divider(
                  height: 4,
                ),
                NewText(
                  text: "Rua Benjamin constant 70 B",
                  size: 15,
                  color: Colors.black,
                ),
                NewText(
                  text: "Entregar: Renato Ikeuchi",
                  size: 15,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
