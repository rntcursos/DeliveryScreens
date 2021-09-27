import 'package:euqueromotoboy/widgets/TextField.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: new Container(
                  child: new Image.asset(
                    'motoboy.png',
                    fit: BoxFit.fill,
                    width: 200.0,
                    height: 200.0,
                  ),
                  color: Colors.black,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                ),
              ),
              NewTextField(
                hint: "Digite seu email",
                label: "Email",
                obscure: false,
              ),
              NewTextField(
                hint: "Digite sua senha",
                label: "Senha",
                obscure: true,
              ),
              SizedBox(
                height: 50,
              ),
              NewButton(
                font_size: 15,
                text: "Login",
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NewText(
                    color: Colors.orange,
                    size: 14,
                    text: "Não tem conta? ",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: NewText(
                      color: Colors.orange,
                      size: 14,
                      text: "Cadastrar",
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
