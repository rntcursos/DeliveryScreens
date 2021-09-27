import 'package:euqueromotoboy/widgets/acceptedfield.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/histoc.dart';
import 'package:euqueromotoboy/widgets/iconbutton.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:euqueromotoboy/widgets/requestfield.dart';
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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                NewText(
                                  text: "Seja bem vindo",
                                  size: 16,
                                  color: Colors.orange,
                                ),
                                NewText(
                                  text: "Renato Ikeuchi",
                                  size: 14,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                NewIconButton(
                                  colors: Colors.orange,
                                  size: 40,
                                  icon: Icons.person_off,
                                  pressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 250,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey,
                        ),
                        child: Center(
                          child: NewText(
                            size: 22,
                            text: "R\$: 180,00",
                            bold: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            NewText(
              size: 14,
              bold: FontWeight.bold,
              color: Colors.grey,
              text: "Novos Pedidos:",
            ),
            SizedBox(
              height: 15,
            ),
            NewRequest(
              cliente: "Renato Ikeuchi",
              enderecoentrega: "Rua Benjamin Constant 70 B",
              enderecoloja: "Rua marechal Deodoro 135",
            ),
          ],
        ),
      ),
    );
  }
}
