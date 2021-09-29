import 'package:euqueromotoboy/widgets/dashboardinfos.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFF202020),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: const Color(0xFF393939),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DashBoardInfo(
                        functionname: "Ordens",
                        icon: Icons.store,
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
                        icon: Icons.store,
                        numberinfo: "R\$: 15.005,00",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
