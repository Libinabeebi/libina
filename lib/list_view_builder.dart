import 'package:flutter/material.dart';

class FriendList extends StatefulWidget {
  const FriendList ({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  List friends=["Mimi","Thumbi","Ami","Rinu","Shana"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ListView.builder(itemCount: friends.length,itemBuilder:(context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.brown,
              child: const Icon(Icons.person),
            ),
            title: Text("${friends[index]}"),
            subtitile: Text
            
          )
        })
      )
    );
  }
}
