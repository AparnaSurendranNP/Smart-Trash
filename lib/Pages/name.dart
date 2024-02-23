import 'package:flutter/material.dart';
import 'package:waste_management_org/Pages/login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    nav();
  }

  nav() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Scaffold(
          backgroundColor: Colors.greenAccent[900],
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('SMART  TRASH', style: TextStyle(fontFamily: 'Rubik_Puddles',color: Colors.green,
                fontSize: 50,fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(child:
                  Image.asset("assets/newlogo.png"),
                    height: 150,
                    width: 150,),
                ],
              ),
            ),
          )),
    );
  }
}

