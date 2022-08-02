import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("PruplePage"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Text(
        "Pruple Page",
        style: TextStyle(fontSize: 24),
      )),
    );
  }
}
