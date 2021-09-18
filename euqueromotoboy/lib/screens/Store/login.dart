import 'package:euqueromotoboy/widgets/TextField.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Container(
              width: 480,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "login.png",
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                  ),
                  NewTextField(
                    obscure: false,
                    hint: "Digite seu email",
                    label: "Email",
                  ),
                  NewTextField(
                    obscure: true,
                    hint: "Digite sua senha",
                    label: "Senha",
                  ),
                  Divider(
                    height: 50,
                  ),
                  NewButton(
                    font_size: 14,
                    text: "Login",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Não tem conta?   "),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cadastrar!",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
