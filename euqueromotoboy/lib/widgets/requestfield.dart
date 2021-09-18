import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class RequestField extends StatelessWidget {
  const RequestField({Key? key}) : super(key: key);

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
                  text: "Endereço de coleta:",
                  size: 16,
                  color: Colors.orange,
                  bold: FontWeight.bold,
                ),
                Divider(
                  height: 4,
                ),
                NewText(
                  text: "Loja: Padaria NSA",
                  size: 15,
                  color: Colors.black,
                ),
                NewText(
                  text: "Pegar: Rua Clovis de Andrade Ribeiro 135",
                  size: 15,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
