import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class DeliveryHome extends StatefulWidget {
  const DeliveryHome({Key? key}) : super(key: key);

  @override
  _DeliveryHomeState createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Divider(
              height: 10,
            ),
            NewText(
              text: "Ganhos: R\$ 80,00",
              size: 25,
              color: Colors.grey,
            ),
            Divider(
              height: 10,
            ),
            SizedBox(
              height: 50,
            ),
            NewText(
              text: "Novos Pedidos:",
              size: 15,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            RequestField(),
            RequestField(),
            RequestField(),
            RequestField(),
          ],
        ),
      ),
    );
  }
}

class RequestField extends StatelessWidget {
  const RequestField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        height: 200,
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
              NewText(
                text: "Endereço de entrega:",
                size: 16,
                color: Colors.orange,
                bold: FontWeight.bold,
              ),
              NewText(
                text: "Nome: Renato Fernando da Silva",
                size: 15,
                color: Colors.black,
              ),
              NewText(
                text: "Entregar: Rua Benjamin Constant 70 B",
                size: 15,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewText(
                    text: "Valor: 104,00",
                    size: 15,
                    color: Colors.black,
                    bold: FontWeight.bold,
                  ),
                  NewButton(
                    font_size: 15,
                    text: "Aceitar",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
