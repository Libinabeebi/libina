import 'package:flutter/material.dart';

import 'loginpage.dart';
class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  int pageIndex=0;

  List pages =[const LoginPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          pageIndex = index;
          setState(()  {


          }

          );
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: ""),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        title: const Text(
          "My App Home",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: pages.elementAt(pageIndex)),
    );
  }
}
