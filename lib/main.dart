import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/HomeP1.dart';

//import 'package:flutter_application_1/screens/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ซ่อนแทบมุมขวา

      home: HomeP1(),
    );
  }
}
