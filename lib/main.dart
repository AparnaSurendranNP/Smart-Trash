import 'package:flutter/material.dart';
import 'package:waste_management_org/Pages/name.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMART TRASH',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}
