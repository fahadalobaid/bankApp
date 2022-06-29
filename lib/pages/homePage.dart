import 'package:bank_app/main.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text(
            "Transactions",
            style: TextStyle(color: Color.fromARGB(255, 175, 152, 83)),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        
      ),
    );
  }
}
