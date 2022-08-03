import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/grey_page.dart';
import 'package:flutter_navigations/purple_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MainMenu());
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                print("maybe");
              } else
                print("no");
              // Navigator.of(context).maybePop();
            },
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            child: Text("Enter the grey page"),
          ),
          ElevatedButton(
            onPressed: () async {
              int? _gelen = await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PurplePage()));
              print("main sayı= $_gelen");
            },
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            child: Text("Enter the Purple page"),
          )
        ],
      )),
    );
  }
}
