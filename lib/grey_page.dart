import 'package:flutter/material.dart';

class GreyPage extends StatelessWidget {
  const GreyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GreyPage"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Text(
        "Grey Page",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
