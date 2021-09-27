import 'package:euqueromotoboy/widgets/iconbutton.dart';
import 'package:euqueromotoboy/widgets/newText.dart';
import 'package:flutter/material.dart';

class NewRequest extends StatelessWidget {
  final cliente;

  final enderecoloja;

  final enderecoentrega;

  const NewRequest(
      {Key? key, this.cliente, this.enderecoloja, this.enderecoentrega})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        key: null,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      NewText(
                        text: cliente,
                        size: 16,
                        bold: FontWeight.bold,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      NewIconButton(
                        pressed: () {},
                        colors: Colors.orange,
                        icon: Icons.local_airport,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      NewText(
                        size: 14,
                        text: enderecoloja,
                      ),
                    ]),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      NewIconButton(
                        pressed: () {},
                        colors: Colors.orange,
                        icon: Icons.local_library_outlined,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      NewText(
                        size: 14,
                        text: enderecoentrega,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    NewIconButton(
                      pressed: () {},
                      colors: Colors.orange,
                      icon: Icons.add,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
