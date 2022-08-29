import 'package:flutter/material.dart';
import 'package:whatssapuiclone/screen/Models/ChatModel.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: dataDummy.length,

          itemBuilder: ((context, index) {
          return ListTile(
            onTap: (){},
              title: Text(dataDummy[index].name),
              subtitle: Text(dataDummy[index].message),
              leading: CircleAvatar(backgroundImage: NetworkImage(dataDummy[index].image),),
              trailing: Text(dataDummy[index].time),
          );
        })),
        floatingActionButton:FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child:Icon(Icons.chat)),
    );
  }
}