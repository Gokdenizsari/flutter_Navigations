import 'package:flutter/material.dart';

class TealPage extends StatelessWidget {
  const TealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TealPage"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "-greyPage");
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text("Go to grey")),
          Text(
            "Teal Page",
            style: TextStyle(fontSize: 24),
          ),
        ],
      )),
    );
  }
}
