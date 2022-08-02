import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/grey_page.dart';
import 'package:flutter_navigations/purple_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(children: [ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>GreyPage()));
          },
          style: ElevatedButton.styleFrom(primary: Colors.grey), 
          child: Text("Enter the grey page"),),
ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>PurplePage()));
          },
          style: ElevatedButton.styleFrom(primary: Colors.purple), 
          child: Text("Enter the Purple page"),)
          ],
          )
          ),
        ),
      );
    
  }
}