import 'package:flutter/material.dart';
import 'app_pages/home.dart';
import 'app_pages/news.dart';
import 'app_pages/pc.dart';
import 'app_pages/consola.dart';
import 'app_pages/software.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/News': (context) => News(),
        '/PC': (context) => PC(),
        '/Consolas': (context) => Consolas(),
        '/Software': (context) => Software(),
      },
      // home: Option1(),
    );
  }
}