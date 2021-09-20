import 'package:euqueromotoboy/widgets/acceptedfield.dart';
import 'package:euqueromotoboy/widgets/button.dart';
import 'package:euqueromotoboy/widgets/histoc.dart';
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
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            RequestField(),
            AcceptedField(),
            HistoricField(),
          ],
        ),
      ),
    );
  }
}
