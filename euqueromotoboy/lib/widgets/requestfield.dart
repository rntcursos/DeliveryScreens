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
          height: 130,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text("Aberto"),
                      ),
                    ),
                    NewText(
                      text: "Valor: 80,00",
                      size: 15,
                      color: Colors.black,
                      bold: FontWeight.bold,
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                ),
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
