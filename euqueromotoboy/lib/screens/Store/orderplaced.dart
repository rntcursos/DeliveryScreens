import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 200, 10, 0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "motoboy.png",
                width: 200,
                height: 200,
              ),
              NewText(
                text: "Pedido Realizado",
                size: 20,
                color: Colors.white,
              ),
              Container(
                height: 100,
              ),
              NewButton(
                font_size: 14,
                text: "Voltar",
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
