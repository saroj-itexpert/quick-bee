import 'package:flutter/material.dart';
import './src/myhomepage.dart';

void main()=> runApp(QuickBase());

class QuickBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quick Bee",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto"),
      home: MyHomePage(),

    );
  }
}


