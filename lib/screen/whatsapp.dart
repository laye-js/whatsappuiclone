import 'package:flutter/material.dart';
import 'package:whatssapuiclone/screen/Appel.dart';
import 'package:whatssapuiclone/screen/Camera.dart';
import 'package:whatssapuiclone/screen/Chats.dart';
import 'package:whatssapuiclone/screen/Status.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.search),Icon(Icons.more_vert)],
          title: Text("Whatsapp"),
          centerTitle: false,
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
                
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Appels",
              )
            ],
            indicatorColor: Colors.white,
          ),
        ),

        body: TabBarView(children: [
          Camera(),Status(),Chats(),Appel()
        ]),
      ),
    );
  }
}
