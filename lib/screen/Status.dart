import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text("Status"),
        floatingActionButton:FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child:Icon(Icons.camera_alt),
    ),);
  }
}