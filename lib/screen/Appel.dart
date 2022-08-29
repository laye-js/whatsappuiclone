import 'package:flutter/material.dart';
import 'package:whatssapuiclone/screen/Models/AppelModel.dart';

class Appel extends StatefulWidget {
  const Appel({Key? key}) : super(key: key);

  @override
  State<Appel> createState() => _AppelState();
}

class _AppelState extends State<Appel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  ListView.builder(
          itemCount: dataAppel.length,

          itemBuilder: ((context, index) {
          return ListTile(
            onTap: (){},
              title: Text(dataAppel[index].name),
              subtitle: Text(dataAppel[index].maker,style:TextStyle(color: Colors.red),),
              leading: CircleAvatar(backgroundImage: NetworkImage(dataAppel[index].image),),
              trailing: Text(dataAppel[index].time),
          );
        })),
        floatingActionButton:FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child:Icon(Icons.call)),
    );
  }
}