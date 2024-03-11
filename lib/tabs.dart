import 'package:flutter/material.dart';
class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: const Text("top Tab"),
        bottom: const TabBar(tabs:[
          Tab(text: "tab 1"),
          Tab(text:"tab 2"),
          Tab(text: " tab 3"),
        ])
      ),
      body: const TabBarView(children: [
        Column(
          children: [
            Text("tabhfg")
          ],
          ),
          Column(
            children: [
              Text("djfhdjfh")
            ],
          ),
          Column(
            children: [
              Text(":dfjdh")
            ],
          ),
      ]),
    ),
    );

  }
}
