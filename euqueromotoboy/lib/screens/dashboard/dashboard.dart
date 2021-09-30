import 'package:euqueromotoboy/widgets/dashboardinfos.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool dashboardview = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MediaQuery.of(context).size.width > 1000
          ? DashBoardViewMenu()
          : DashBoardViewWithOutMenu(),
    );
  }
}

class MenuOptions extends StatelessWidget {
  final textmenu;

  final String option1;

  final String option2;

  final VoidCallback funcOption1;

  final VoidCallback funcOption2;

  final IconData? icon;

  const MenuOptions(
      {Key? key,
      required this.textmenu,
      required this.option1,
      required this.option2,
      required this.funcOption1,
      required this.funcOption2,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: NewText(
              text: textmenu,
              size: 16,
            ),
            trailing: Icon(
              icon,
              size: 14,
            ),
          ),
          ListTile(
            title: NewText(
              text: option1,
              color: Colors.orange,
            ),
            onTap: funcOption1,
          ),
          ListTile(
            title: NewText(
              text: option2,
              color: Colors.orange,
            ),
            onTap: funcOption2,
          ),
        ],
      ),
    );
  }
}

class DashBoardViewMenu extends StatelessWidget {
  const DashBoardViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: const Color(0xFF202020),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: NewText(
                          text: "DashBoard",
                          bold: FontWeight.bold,
                          size: 20,
                          color: Colors.orange,
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back),
                        ),
                      ),
                      MenuOptions(
                        textmenu: "Cadastrar",
                        option1: "Motoboy",
                        option2: "Lojista",
                        icon: Icons.save,
                        funcOption1: () {},
                        funcOption2: () {},
                      ),
                      MenuOptions(
                        textmenu: "Perfil",
                        option1: "Motoboy",
                        option2: "Lojista",
                        icon: Icons.person,
                        funcOption1: () {},
                        funcOption2: () {},
                      ),
                      MenuOptions(
                        textmenu: "Relatórios",
                        option1: "Motoboy",
                        option2: "Lojista",
                        icon: Icons.data_saver_off,
                        funcOption1: () {},
                        funcOption2: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: const Color(0xFF393939),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashBoardInfo(
                        functionname: "Ordens",
                        icon: Icons.dashboard,
                        numberinfo: "1992",
                      ),
                      DashBoardInfo(
                        functionname: "Usuarios",
                        icon: Icons.people_alt,
                        numberinfo: "182",
                      ),
                      DashBoardInfo(
                        functionname: "Lojas",
                        icon: Icons.store,
                        numberinfo: "50",
                      ),
                      DashBoardInfo(
                        functionname: "Caixa",
                        icon: Icons.monetization_on,
                        numberinfo: "R\$: 15.005,00",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF202020),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DashBoardViewWithOutMenu extends StatelessWidget {
  const DashBoardViewWithOutMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: const Color(0xFF393939),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashBoardInfo(
                        functionname: "Ordens",
                        icon: Icons.dashboard,
                        numberinfo: "1992",
                      ),
                      DashBoardInfo(
                        functionname: "Usuarios",
                        icon: Icons.people_alt,
                        numberinfo: "182",
                      ),
                      DashBoardInfo(
                        functionname: "Lojas",
                        icon: Icons.store,
                        numberinfo: "50",
                      ),
                      DashBoardInfo(
                        functionname: "Caixa",
                        icon: Icons.monetization_on,
                        numberinfo: "R\$: 15.005,00",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF202020),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
