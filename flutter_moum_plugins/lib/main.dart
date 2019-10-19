import 'package:flutter/material.dart';
import 'package:flutter_moum_plugins/moum_plugins.dart';
import 'package:flutter_moum_plugins/route.dart';
import 'package:flutter_moum_plugins/style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Moum',
      theme: new ThemeData(primaryColor: primaryColor),
      routes: routes,
    );
  }
}
