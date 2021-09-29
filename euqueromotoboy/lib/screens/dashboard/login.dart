import 'package:euqueromotoboy/widgets/TextField.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginDashBoard extends StatelessWidget {
  const LoginDashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        flex: 1,
        child: Container(
          child: Center(
            child: Container(
              width: 500,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "login.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      NewTextField(
                        label: "Email",
                        obscure: false,
                        hint: "Digite seu email",
                      ),
                      NewTextField(
                        label: "Senha",
                        obscure: true,
                        hint: "Digite sua senha",
                      ),
                      NewButton(
                        font_size: 13,
                        text: "Login",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
