import 'package:euqueromotoboy/widgets/TextField.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:euqueromotoboy/widgets/newcheckbox.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  var _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 460,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      NewText(
                        text: "Seja bem vindo",
                        color: Colors.orange,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Digite os dados para a entrega:"),
                  ),
                  NewTextField(
                    hint: "Digite o Nome do cliente",
                    label: "Nome",
                    obscure: false,
                  ),
                  NewTextField(
                    hint: "Endereço de entrega",
                    label: "Endereço",
                    obscure: false,
                  ),
                  NewTextField(
                    hint: "Digite o Telefone",
                    label: "Telefone",
                    obscure: false,
                  ),
                  NewTextField(
                    hint: "Digite o Valor a ser pago",
                    label: "Valor",
                    obscure: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NewCheckBox(_checkbox, "Debito"),
                      NewCheckBox(_checkbox, "Credito"),
                      NewCheckBox(_checkbox, "Dinheiro"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Resumo do Pedido:"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NewText(
                            text: "Nome: Renato Fernando da Silva",
                            color: Colors.black,
                            size: 14,
                          ),
                          NewText(
                            text: "Endereço: Rua Benjamin Constant 70 B",
                            color: Colors.black,
                            size: 14,
                          ),
                          NewText(
                            text: "Telefone: +55 35 984164756",
                            color: Colors.black,
                            size: 14,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NewText(
                            text: "Valor: R\$ 100,00",
                            color: Colors.black,
                            size: 14,
                          ),
                          NewText(
                            text: "Frete: R\$ 4,00",
                            color: Colors.black,
                            size: 14,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          NewText(
                            text: "Total: R\$ 104,00",
                            color: Colors.black,
                            size: 14,
                            bold: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NewButton(
                    font_size: 13,
                    text: "Chamar",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
