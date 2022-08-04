import 'dart:math';

import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  PurplePage({Key? key}) : super(key: key);
  int _randomSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("No");
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("PruplePage"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Pruple Page",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  _randomSayi = Random().nextInt(99);
                  print("sayı = $_randomSayi");
                  Navigator.of(context).pop(_randomSayi);
                },
                child: Text("Back")),
            
          ],
        )),
      ),
    );
  }
}
