import 'package:euqueromotoboy/screens/DeliveryGuy/home.dart';
import 'package:euqueromotoboy/screens/Store/login.dart';
import 'package:euqueromotoboy/screens/Store/orderplaced.dart';
import 'package:euqueromotoboy/screens/Store/requestScreen.dart';
import 'package:euqueromotoboy/screens/dashboard/dashboard.dart';
import 'package:euqueromotoboy/screens/dashboard/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eu quero Delivery',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFFffae00),
        canvasColor: const Color(0xFF303030),
      ),
      home: Scaffold(
        body: DashBoard(),
      ),
    );
  }
}
