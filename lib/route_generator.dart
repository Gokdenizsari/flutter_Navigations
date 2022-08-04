import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_navigations/main.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(
            builder: (context) => MainMenu(),
          );
        } else if (defaultTargetPlatform == TargetPlatform.android) {
          return MaterialPageRoute(
            builder: (context) => MainMenu(),
          );
        } else
          return MaterialPageRoute(
            builder: (context) => MainMenu(),
          );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text("Error"),
            ),
            body: Center(
              child: Text("page not found"),
            ),
          ),
        );
    }
  }
}
