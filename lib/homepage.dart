import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[900],
      appBar: AppBar(
        backgroundColor: Colors.pink[700],title:const Text("Libina"),
        leading:const Icon(Icons.ac_unit_sharp,),
      ),
      body: Center(
        child:
          Image(image: AssetImage("assets/google.png"),),
      ),
    );
  }
}

